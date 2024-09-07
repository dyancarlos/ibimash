class CandidateBattlesController < ApplicationController
  def new
    @player_a = Candidate.random
    @player_b = Candidate.not_id(@player_a.id).special(@player_a.special).random
  end
end
