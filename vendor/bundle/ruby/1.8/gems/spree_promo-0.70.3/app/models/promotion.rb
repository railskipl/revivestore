class Promotion < Activator


  MATCH_POLICIES = %w(all any)

  preference :usage_limit, :integer
  preference :match_policy, :string, :default => MATCH_POLICIES.first
  preference :code, :string
  preference :advertise, :boolean, :default => false

  [:usage_limit, :match_policy, :code, :advertise].each do |field|
    alias_method field, "preferred_#{field}"
    alias_method "#{field}=", "preferred_#{field}="
  end
  
  has_many :promotion_rules, :foreign_key => 'activator_id', :autosave => true, :dependent => :destroy
  alias_method :rules, :promotion_rules
  accepts_nested_attributes_for :promotion_rules

  has_many :promotion_actions, :foreign_key => 'activator_id', :autosave => true, :dependent => :destroy
  alias_method :actions, :promotion_actions
  accepts_nested_attributes_for :promotion_actions

  # TODO: This shouldn't be necessary with :autosave option but nested attribute updating of actions is broken without it
  after_save :save_rules_and_actions
  def save_rules_and_actions
    (rules + actions).each &:save
  end


  validates :name, :presence => true
  validates :preferred_code, :presence => true, :if => lambda{|r| r.event_name == 'spree.ceckout.coupon_code_added' }

  class << self
    def advertised
      includes(:stored_preferences).where(:preferences => {:name => 'advertise', :value => '1'})
    end
  end

  # TODO: Remove that after fix for https://rails.lighthouseapp.com/projects/8994/tickets/4329-has_many-through-association-does-not-link-models-on-association-save
  # is provided
  def save(*)
    if super
      promotion_rules.each { |p| p.save }
    end
  end


  def activate(payload)
    if eligible?(payload[:order], payload)
      actions.each do |action|
        action.perform(payload)
      end
    end
  end

  def eligible?(order, options = {})
    !expired? && rules_are_eligible?(order, options) && coupon_is_eligible?(order, options[:coupon_code])
  end

  def rules_are_eligible?(order, options = {})
    return true if rules.none?
    if match_policy == 'all'
      rules.all?{|r| r.eligible?(order, options)}
    else
      rules.any?{|r| r.eligible?(order, options)}
    end
  end

  def coupon_is_eligible?(order, code = nil)
    return true if order && order.promotion_credit_exists?(self)
    return true if event_name != 'spree.checkout.coupon_code_added'
    code.to_s.strip.downcase == preferred_code.to_s.strip.downcase
  end

  # Products assigned to all product rules
  def products
    @products ||= rules.of_type("Promotion::Rules::Product").map(&:products).flatten.uniq
  end

  def expired?
    super || usage_limit_exceeded?
  end

  def usage_limit_exceeded?
    preferred_usage_limit.present? && preferred_usage_limit > 0 && credits_count >= preferred_usage_limit
  end

  def credits
    Adjustment.where(:originator_id => actions.map(&:id))
  end

  def credits_count
    credits.count
  end

end
