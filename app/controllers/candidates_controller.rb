class CandidatesController < ApplicationController
  before_action :fetch_winner
  before_action :fetch_loser

  def update
    CalculatePlayersRatingService.new(winner: @winner, loser: @loser).call

    redirect_to new_candidate_battles_path
  end

  private

  def fetch_winner
    @winner = Candidate.find(params[:winner])
  end

  def fetch_loser
    @loser = Candidate.find(params[:loser])
  end
end
