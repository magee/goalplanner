class ApplicationController < ActionController::Base
  protect_from_forgery

  def link_to_submit(text)
    link_to_function text, "$(this).closest('form').submit()"
  end

end
