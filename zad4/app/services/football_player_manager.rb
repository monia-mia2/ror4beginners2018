# frozen_string_literal: true

class FootballPlayerManager
  attr_reader :player

  def initialize(player)
    @player = player
  end

  def stronger_players
    # TODO: Implement me pls
    @power = @player[:power]
    Player.where("power > ?", @power)
  end

  def set_power(value)
    @player.update(power: value)
  end

  def copy_player
    # TODO: I feel empty inside
    new_player = @player.dup
    new_player.save
  end
end
