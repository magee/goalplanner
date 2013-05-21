class ApplicationController < ActionController::Base
  protect_from_forgery

  def link_to_submit(text)
    link_to_function text, "$(this).closest('form').submit()"
  end

  protected

  def after_sign_in_path_for(resource)
    request.env['omniauth.origin'] || stored_location_for(resource) || root_path
  end

  def after_update_path_for(resource)
    session[:startup_id] = current_user.startup_id
    user_path(resource)
  end

  def after_sign_out_path_for(resource_or_scope)
    request.referrer
  end

end
