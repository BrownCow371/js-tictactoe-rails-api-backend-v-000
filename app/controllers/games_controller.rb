class GamesController < ApplicationController
  # Add your GamesController code here
  def show
    @game = Game.find(params[:id])
    render json: @game
  end

  def create
    @game = Game.create(game_params)
    render json: @game
  end

  def updated
    @game = Game.find(params[:id])
    @game.update(params[:state])
    render json: @game
  end

  def index
    @games = Game.all
    render json: @games
  end

  def game_params
    params.require(:game).permit(:state)
  end

end
