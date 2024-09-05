require 'rails_helper'

RSpec.describe CalculatePlayersRatingService, type: :service do
  context 'when player A rating is greater than player B rating' do
    let!(:player_a) { create(:candidate, rating: 1200) }
    let!(:player_b) { create(:candidate, rating: 1000) }

    it 'calculates the new rating' do
      CalculatePlayersRatingService.new(winner: player_a, loser: player_b).call
      expect(player_a.rating).to eq(1209.61)
      expect(player_b.rating).to eq(990.39)
      expect(player_a.plays_count).to eq(1)
      expect(player_b.plays_count).to eq(1)
    end
  end

  context 'when players have the same rating' do
    let!(:player_a) { create(:candidate, rating: 1500) }
    let!(:player_b) { create(:candidate, rating: 1500) }

    it 'calculates the new rating' do
      CalculatePlayersRatingService.new(winner: player_a, loser: player_b).call
      expect(player_a.rating).to eq(1520.0)
      expect(player_b.rating).to eq(1480.0)
      expect(player_a.plays_count).to eq(1)
      expect(player_b.plays_count).to eq(1)
    end
  end

  context 'when a low rating player beats a higher rating player' do
    let!(:player_a) { create(:candidate, rating: 5000) }
    let!(:player_b) { create(:candidate, rating: 1500) }

    it 'calculates the new rating' do
      CalculatePlayersRatingService.new(winner: player_b, loser: player_a).call
      expect(player_a.rating).to eq(4960.0)
      expect(player_b.rating).to eq(1540.0)
      expect(player_a.plays_count).to eq(1)
      expect(player_b.plays_count).to eq(1)
    end
  end

  context 'when Player A plays with 5 other oponents' do
    let!(:player_a) { create(:candidate, rating: 1613) }
    let!(:player_b) { create(:candidate, rating: 1720) }
    let!(:player_c) { create(:candidate, rating: 1388) }
    let!(:player_d) { create(:candidate, rating: 1586) }
    let!(:player_e) { create(:candidate, rating: 1609) }

    # Example taken from:
    # https://pt.wikipedia.org/wiki/Rating_Elo
    # ---
    it 'calculates the correct rating for Player A' do
      CalculatePlayersRatingService.new(winner: player_b, loser: player_a).call
      CalculatePlayersRatingService.new(winner: player_a, loser: player_c).call
      CalculatePlayersRatingService.new(winner: player_a, loser: player_d).call
      CalculatePlayersRatingService.new(winner: player_e, loser: player_a).call

      expect(player_a.rating).to eq(1605.83)
    end
  end
end
