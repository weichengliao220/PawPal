class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])

    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
  end
end
