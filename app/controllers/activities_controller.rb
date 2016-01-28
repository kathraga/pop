class ActivitiesController < ApplicationController

  def new
    @activity = Activity.new
  end

  def create
    @competence = Competence.find(params[:competence_id])
    @goal = Goal.find(params[:goal_id])
    @activity = @goal.activities.build(activity_params)
    redirect_to edit_competence_goal_path(@competence, @goal)
    @activity.save!
  end

  def destroy
    @competence = Competence.find(params[:competence_id])
    @goal = Goal.find(params[:goal_id])
    @activity = Activity.find(params[:id])
    @activity.destroy
    redirect_to edit_competence_goal_path(@competence, @goal)
  end

  def edit

  end

private

  def activity_params
    params.require(:activity).permit(:activity)
  end
end
