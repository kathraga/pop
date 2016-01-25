class CompetencesController < ApplicationController
  before_action :set_competence, only: [:show, :update]

  def show
  end

  def index
    @competences = Competence.all
  end

  def update
    if @competence.update_attributes(competence_params)
      redirect_to @competence
    else
      redirect_to competence_path, notice: "Sorry.. er ging iets verkeerd"
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
