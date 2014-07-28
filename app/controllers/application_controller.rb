class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def show
    @u = User.find_by_id(params['id'])
    render 'show'
  end
  
  
  def new
  end
  
  def create
      u = User.new
      u.name = params['name']
      u.email = params['email']
      u.save
      redirect_to "/users/#{ u.id }"
  end
  
end
