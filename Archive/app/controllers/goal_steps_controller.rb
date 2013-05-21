class GoalStepsController < ApplicationController
  include Wicked::Wizard
  steps :milestones

  # TODO: defining steps in progress
  def show
    @goal = goal
    @goals.attributes = params[:goals]
    render_wizard @goal
  end
end
