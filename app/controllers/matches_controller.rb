class MatchesController < ApplicationController


include MatchesHelper
def index
  @matches = Match.all
end

def show
  @match = Match.find(params[:id])
end

def new
  @match = Match.new
end


def create
  @match = Match.new(match_params)
  @match.match_name = "#{@match.winner_name} VS #{@match.loser_name}"
  @match.save
  winner = Player.find_or_create_by(steamid: @match.winner_id)
  loser = Player.find_or_create_by(steamid: @match.loser_id)
  @match.players << winner
  @match.players << loser
  winner.name = @match.winner_name
  loser.name = @match.loser_name
  winner.elo = 1600 if winner.elo.nil?
  loser.elo = 1600 if loser.elo.nil?
  eloshift = elo_change(winner.elo,loser.elo)
  winner.elo += eloshift
  loser.elo -= eloshift
  winner.save
  loser.save
  @match.save
  redirect_to match_path(@match)
end

def destroy
  @match = Match.find(params[:id])
  @match.destroy
  redirect_to matches_path
end

def edit
  @match = Match.find(params[:id])
end

def update
  @match = Match.find(params[:id])
  @match.update(match_params)
  redirect_to match_path(@match)
end


def elo_change(welo,lelo)
 qa = 10**(welo / 400.0)
 qb = 10**(lelo / 400.0)
 k = 32
 elo_adjust = k * (1 - qa/(qa + qb))
 return elo_adjust.ceil
end

end
