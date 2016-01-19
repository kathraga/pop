class GoalsController < ApplicationController

  def create
    @competence = Competence.find(params[:competence_id])
    @goal = @competence.goals.create(goal_params)
    redirect_to competence_path(@competence)
  end

   def destroy
    @competence = Competence.find(params[:competence_id])
    @goal = @competence.goals.find(params[:id])
    @goal.destroy
    redirect_to competence_path(@competence)
  end

  def show
  end

  def new
  end

  def edit
    @competence = Competence.find(params[:competence_id])
    @goal = @competence.goals.find(params[:id])
  end

  def update
    @competence = Competence.find(params[:competence_id])
    @goal = @competence.goals.find(params[:id])
  if @goal.update(goal_params)
    redirect_to @competence
  else
    render 'edit'
  end
end


 private
    def goal_params
      params.require(:goal).permit(:description)
    end
end
