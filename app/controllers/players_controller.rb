class PlayersController < ApplicationController


def index
  @players = Player.all
end

def show
  @player = Player.find(params[:id])
end

def new
  @player = Player.new
end

def destroy
  @player = Player.find(params[:id])
  @player.destroy
  redirect_to players_path
end

def edit
  @player = Player.find(params[:id])
end

end
