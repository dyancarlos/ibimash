class CandidatesController < ApplicationController
  before_action :fetch_winner
  before_action :fetch_loser

  def update
    CalculatePlayersRatingService.new(winner: @winner, loser: @loser).call

    redirect_to new_candidate_battles_path
  rescue StandardError
    redirect_to new_candidate_battles_path, notice: 'Algo de errado aconteceu, por favor, tente novamente!'
  end

  private

  def fetch_winner
    @winner = Candidate.find(params[:winner])
  end

  def fetch_loser
    @loser = Candidate.find(params[:loser])
  end
end
