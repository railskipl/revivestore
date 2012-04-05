class AudioRevivesController < Spree::BaseController

  def new
    @audio_revive = AudioRevive.new

  end

  def create
    @audio_revive = AudioRevive.new(params[:audio_revive])
    
    if @audio_revive.save
       flash[:notice] = "Audio Added successfully"
       redirect_to("/products")
    else
       render :new
    end
  end

end