
require "byebug"
class Player
  def hand
    puts "put a number"
    puts "0:rock, 1:scissors, 2:peper"
    input_hand = gets.chomp

    while true
    
      if input_hand == "0" || input_hand == "1" || input_hand == "2"
        return input_hand
      else
        puts "put a number onece agein"
        puts "0:rock, 1:scissors, 2:paper"
        input_hand = gets.chomp
      end
    end
  end
end

class Enemy
  def hand

    enemy_hand = rand(0..2)
  end
end

class Janken
  def pon(player_hand, enemy_hand)

    janken = ["rock", "scissors", "paper"]
    puts "opponent's hand is #{janken[enemy_hand]}"


    while true
      if player_hand == enemy_hand
        puts "even"
        return true
      elsif (player_hand == 0 && enemy_hand == 1) || (player_hand == 1 && enemy_hand == 2) || (player_hand == 2 && enemy_hand == 0)
        puts "You Win!"
        return false
      else
        puts "You Lose!"
        return false
      end
    end
  end
end

class Action
  def jankenpon
    player = Player.new

    enemy = Enemy.new

    janken = Janken.new

    next_game = true
    while next_game
        next_game = janken.pon(player.hand, enemy.hand)
    end
  end
end


action = Action.new
action.jankenpon
