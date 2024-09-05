class CalculatePlayersRatingService
  WINNER   = 1
  LOSER    = 0
  K_FACTOR = 40

  def initialize(winner:, loser:)
    @winner = winner
    @loser  = loser
  end

  def call
    ActiveRecord::Base.transaction do
      winner_new_rating = winner_rating
      loser_new_rating  = loser_rating

      @winner.update!(rating: winner_new_rating, plays_count: @winner.plays_count + 1)
      @loser.update!(rating: loser_new_rating, plays_count: @loser.plays_count + 1)
    end
  end

  private

  def winner_rating
    elo_rating(probability(@winner.rating, @loser.rating), @winner.rating, WINNER).round(2)
  end

  def loser_rating
    elo_rating(probability(@loser.rating, @winner.rating), @loser.rating, LOSER).round(2)
  end

  def probability(player_a, player_b)
    1 / (1 + 10 ** ((player_b - player_a) / 400.0))
  end

  def elo_rating(probability, rating, outcome)
    rating + K_FACTOR * (outcome - probability)
  end
end
