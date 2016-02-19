class ActivitiesController < ApplicationController

  def new
    @activity = Activity.new
  end

  def create
    @competence = Competence.find(params[:competence_id])
    @goal = Goal.find(params[:goal_id])
    @activity = @goal.activities.build(activity_params)

    if @activity.save
    redirect_to edit_competence_goal_path(@competence, @goal)
    else
      flash[:activity_error] = "Activiteit moet minimaal 4 characters lang zijn en maximaal 80 characters lang."
      redirect_to edit_competence_goal_path(@competence, @goal)
    end
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
