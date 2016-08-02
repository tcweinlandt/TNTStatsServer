module MatchesHelper

def match_params
  params.permit(:winner_name, :winner_id, :winner_picks, :loser_name, :loser_id, :loser_picks)
end

end
