  #start game
  #change player
  #checks winner
  
class Game
  def initialize
    @player1 = Players.new("player 1")
    @player2 = Players.new("player 2")
    @winner = false
    @current_player = @player1
  end

  def start
    puts "New Game! Welcome #{@player1.name} and #{@player2.name}"
    while !@winner
      puts "--NEW TURN--"
      question = Questions.new
      puts "#{@current_player.name}: #{question.ask_player}"
      print "> "
      answer = $stdin.gets.chomp
      if question.check?(answer)
        puts "#{@current_player.name}: CORRECT!"
      else
        puts "#{@current_player.name}: INCORRECT"
        @current_player.lose_life
      end
        puts "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3"
        swap_player
        winner?
    end
    game_over
  end #end of class

  def swap_player
    if @current_player == @player1
      @current_player = @player2
    else current_player = @player1
    end
  end

  def winner?
    if @player1.is_dead?
      @winner = @player2
    elsif @player2.is_dead?
      @winner = @player1
    end
  end

  def game_over
    if @player1.is_dead? || @player2.is_dead?
      puts "#{@winner.name} wins with a score of #{@winner.lives}/3"
      puts "-- GAME OVER --"
    end
  end
end
 