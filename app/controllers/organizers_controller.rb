# frozen_string_literal: true

class OrganizersController < ApplicationController
  before_action :set_organizer, only: %i[edit update destroy]

  def index
    @organizers = Organizer.all
  end

  def new
    @organizer = Organizer.new
  end

  def edit; end

  def create
    @organizer = Organizer.new organizer_params

    if @organizer.save
      redirect_to action: :index
    else
      render :new
    end
  end

  def update
    if @organizer.update organizer_params
      redirect_to action: :index
    else
      render :edit
    end
  end

  def destroy
    @organizer.destroy

    redirect_to action: :index
  end

  private

  def set_organizer
    @organizer = Organizer.find params[:id]
  end

  def organizer_params
    params.require(:organizer).permit(:name)
  end
end
