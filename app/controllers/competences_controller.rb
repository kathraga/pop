class CompetencesController < ApplicationController
  def show
    @competence = Competence.find(params[:id])
  end

   def index
    @competences = Competence.all
  end
end
