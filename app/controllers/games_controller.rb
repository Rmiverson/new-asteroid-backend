class GamesController < ApplicationController
    def index
        games = Game.all
        render json: games
    end

    def create
        game = Game.create(score: params['score'], user_id: User.last.id, level_id: params['level_id'])
        render :json => game
    end

    def destroy
        game = Game.find(params[:id])
        game.destroy
    end
end
