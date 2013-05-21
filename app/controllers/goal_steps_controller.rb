class GoalStepsController < ApplicationController
  include Wicked::Wizard
  steps :milestones

  # TODO: defining steps in progress
  def show
    @goal = :goal_id
    render_wizard @goal
  end

  def update
    @goal = :goal_id
    @goal.attributes = params[:goal]
    render_wizard @goal
  end

end
