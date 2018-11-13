class Character
  attr_accessor :name, :level

  def initialize name, level
    self.name = name
    self.level = level
  end

  def strength
    level + rand(1..12)
  end

  def card
    puts "#{name} (lvl #{level})"
  end
end

class Warrior < Character

  def initialize name, level
    super(name, level)
  end

end

class Monster < Character
  def initialize name, level
    super(name, level)
  end

end


class BattleArena
  
  def initialize(first_character, second_character)
    @first_character = first_character
    @second_character = second_character
  end

  def battle!
    dmg1 = @first_character.strength
    dmg2 = @second_character.strength
    puts "#{@first_character.name} attacked #{@second_character.name} with #{dmg1} damage"
    puts "#{@second_character.name} attacked #{@first_character.name} with #{dmg2} damage"
    
    if dmg1 > dmg2 
      puts "#{@first_character.name} won"
      if @first_character.is_a? Warrior 
        @first_character.level += (@first_character.level - @second_character.level).abs + 1
      end
    end
    if dmg1 < dmg2
      puts "#{@second_character.name} won"
      if @second_character.is_a? Warrior
        @second_character.level += (@second_character.level - @first_character.level).abs + 1
      end
    end


  end
end


warrior1 = Warrior.new("Po", 1)
warrior2 = Warrior.new("Tai Lung", 1)
monster1 = Monster.new("Skeleton Mage", 12)

warrior1.card
warrior1.strength
warrior1.strength
warrior2.card
monster1.card

arena = BattleArena.new(warrior1, warrior2)
arena.battle!

warrior1.card
warrior2.card

arena.battle!
warrior1.card
warrior2.card

arena = BattleArena.new(warrior1, monster1)
arena.battle!
#puts warrior1.card
