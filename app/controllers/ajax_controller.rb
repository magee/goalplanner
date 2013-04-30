class AjaxController < ApplicationController

  respond_to :js

  def complete_task
    @task = Task.where(:id => params[:id])
    @task.is_complete = true
  end

end