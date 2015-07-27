class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def show 
    @user = Box.find_by_id(params["id"])
  end
  def new
  end 
  def create
    b = Box.new
    b.name=params["name"]
    b.email=params["email"]
    b.save
    redirect_to "/show/#{ b.id }"
  end
end
