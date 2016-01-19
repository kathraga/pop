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

  def new
  end

 private
    def goal_params
      params.require(:goal).permit(:description)
    end
end
