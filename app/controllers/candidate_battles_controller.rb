class CandidateBattlesController < ApplicationController
  def new
    Candidate.uncached do
      @player_a = Candidate.order("RANDOM()").limit(1).take
      @player_b = Candidate.order("RANDOM()").limit(1).take
    end
  end
end
