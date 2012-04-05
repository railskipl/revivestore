# Keep a record ot all static page paths visited for promotions that require them
ContentController.class_eval do
  after_filter :store_visited_path
  def store_visited_path
    session[:visited_paths] ||= []
    session[:visited_paths] = (session[:visited_paths]  + [params[:path]]).compact.uniq
  end
end
