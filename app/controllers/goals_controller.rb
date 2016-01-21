class GoalsController < ApplicationController
  before_action :set_competence, only: [:destroy, :create, :show, :edit, :update]
  before_action :set_goal, only: [:destroy, :show, :edit, :update]


  def create
    @goal = @competence.goals.create(goal_params)
    redirect_to competence_goal_path(@competence, @goal)
  end

   def destroy
    @goal.destroy
    redirect_to competence_path(@competence)
  end

  def show
  end

  def new
  end

  def edit
    @activity = @goal.activities.all

  end

  def update
  if @goal.update(goal_params)
    redirect_to edit_competence_goal_path(@competence, @goal)
  else
    render 'edit'
  end
end


 private
  def set_competence
    @competence = Competence.find(params[:competence_id])
  end

  def set_goal
    @goal = @competence.goals.find(params[:id])
  end

  def goal_params
    params.require(:goal).permit(:description)
  end
end
