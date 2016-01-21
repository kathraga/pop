class CompetencesController < ApplicationController
  before_action :set_competence, only: [:show, :update]

  def show
  end

  def index
    @competences = Competence.all
  end

  def update
    if @competence.update_attributes(competence_params)
      flash[:success] = "awesome"
      redirect_to @competence
    else
      redirect_to competence_path, notice: "you fucked up man.."
    end
  end

  private
  def set_competence
    @competence = Competence.find(params[:id])
  end

  def competence_params
    params.require(:competence).permit(:g_ec, :e_ec)
  end

end
