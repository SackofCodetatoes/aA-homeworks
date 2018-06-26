class Board
  attr_accessor :cups, :player1, :player2

  def initialize(name1, name2)
    @player1 = name1 #cup 6
    @player2 = name2 #cup 13
    @cups = Array.new(14) {Array.new}
    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    #cup 13 & 6 are player cups

    @cups.map!.with_index do |cup, indx|
      case indx
      when 13
        cup = Array.new
      when 6
        cup = Array.new
      else
        cup = [:stone, :stone, :stone, :stone]
      end
    end

  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if !(0..13).include?(start_pos)
    raise "Starting cup is empty" if @cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)

    collected = @cups[start_pos].dup
    @cups[start_pos] = Array.new
    cur_cup = start_pos
    # puts "my turn!"
    until collected.empty?
      cur_cup = (cur_cup + 1) % 14
      # puts 'every step render'
      # render
      case cur_cup

      # when 14
      #   cur_cup = 0
      when 6
        @cups[cur_cup] << collected.pop if current_player_name == @player1
      when 13
        @cups[cur_cup] << collected.pop if current_player_name == @player2
      else
        @cups[cur_cup] << collected.pop
      end

    end
    render

    next_turn(cur_cup)
  end

  def next_turn(ending_cup_idx)
# puts 'ended here'
#     p ending_cup_idx
#     render
    # p @cups[ending_cup_idx]
    if ending_cup_idx == 13 || ending_cup_idx == 6
      return :prompt
    elsif @cups[ending_cup_idx].length == 1
      return :switch
    elsif !@cups.empty?
      return ending_cup_idx
    end
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    @cups[0...6].all?{|cup| cup.empty?} || @cups[7...13].all?{|cup| cup.empty?}
  end

  def winner
    case @cups[13] <=> @cups[6]
    when -1
      return @player1
    when 0
      return :draw
    when 1
      return @player2
    end
  end
end
