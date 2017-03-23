class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include PublicActivity::StoreController 

  before_action :authenticate_user!

  def contacts
  	@activities = PublicActivity::Activity.all
  end
  def agenda
  end
end
