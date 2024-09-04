class CandidateBattlesController < ApplicationController
  def new
    Candidate.uncached do
      loop do
        @player_a, @player_b = random_player, random_player

        break unless @player_a.id == @player_b.id
      end
    end
  end

  private

  def random_player
    Candidate
      .order("RANDOM()")
      .limit(1)
      .take
  end
end
