class ProjectCardsController < ApplicationController
  def create
    project_card = ProjectCard.new(
      project_id: params[:project_id],
      card_id: params[:card_id]
    )
    project_card.save
    '*' * 50
    p project_card
    '*' * 50
    redirect_to '/projects'
  end
end
