class GamesController < ApplicationController
  # Add your GamesController code here
  def show
    @game = Game.find(params[:id])
    render json: @game
end
