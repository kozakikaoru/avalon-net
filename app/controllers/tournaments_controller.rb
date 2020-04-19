# frozen_string_literal: true

class TournamentsController < ApplicationController
  before_action :set_tournament, only: %i[edit update destroy]

  def index
    @tournaments = Tournament.all
  end

  def new
    @tournament = Tournament.new
  end

  def edit; end

  def create
    @tournament = Tournament.new tournament_params

    if @tournament.save
      redirect_to action: :index
    else
      render :new
    end
  end

  def update
    if @tournament.update tournament_params
      redirect_to action: :index
    else
      render :edit
    end
  end

  def destroy
    @tournament.destroy

    redirect_to action: :index
  end

  private

  def set_tournament
    @tournament = Tournament.find params[:id]
  end

  def tournament_params
    params.require(:tournament).permit(
      :name, :game_type, :prize, :event_at
    )
  end
end
