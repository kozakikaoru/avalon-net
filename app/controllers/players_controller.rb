# frozen_string_literal: true

class PlayersController < ApplicationController
  before_action :set_player, only: %i[edit update destroy]

  def index
    @players = Player.all
  end

  def new
    @player = Player.new
  end

  def edit; end

  def create
    @player = Player.new player_params

    if @player.save
      redirect_to action: :index
    else
      render :new
    end
  end

  def update
    if @player.update player_params
      redirect_to action: :index
    else
      render :edit
    end
  end

  def destroy
    @player.destroy

    redirect_to action: :index
  end

  private

  def set_player
    @player = Player.find params[:id]
  end

  def player_params
    params.require(:player).permit(:ign, :igid)
  end
end
