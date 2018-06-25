class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @seq = []
    @sequence_length = 1
    @game_over = false
  end

  def play
    until @game_over
      take_turn
      # system("clear")
    end

    game_over_message
    reset_game

  end

  def take_turn
    @sequence_length += 1
    show_sequence
    require_sequence
    round_success_message unless @game_over

  end

  def show_sequence
    add_random_color
    @seq.each do |color|
      puts color

      # sleep 0.75
      # system("clear")
      # sleep 0.25
    end

  end

  def require_sequence
    current = 0
    user_input = []
    until current == @seq.length || @game_over
      print "> "
      user_input << gets.chomp
      # guess = gets.chomp
      @game_over = true if user_input[current] != @seq[current]
      current += 1
    end
    # sleep 0.25
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    puts "Correct!"
  end

  def game_over_message
    puts "BEEP BOOP!: Game Over"
    # @game_over = true
  end

  def reset_game
    initialize
  end
end
