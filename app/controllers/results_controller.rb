# frozen_string_literal: true

class ResultsController < ApplicationController
  before_action :set_tournament, only: %i[new edit create update]

  def new
    @tournament.build_results
  end

  def edit; end

  def create
    if @tournament.update! results_params
      redirect_to tournaments_path
    else
      render :new
    end
  end

  def update
    if @tournament.update! results_params
      redirect_to tournaments_path
    else
      render :edit
    end
  end

  private

  def set_tournament
    @tournament = Tournament.find params[:tournament_id]
  end

  def results_params
    params.require(:tournament).permit(
      results_attributes: %i[id rank player_ign kill damage]
    )
  end
end
