class Board


  # attr_accessor :board
  @@winning_combinations =
   [ [0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [2, 5, 8], [1, 4, 7], [2, 4, 6] ]

  def initialize
    @board = Array.new(9, " ")
  end

  def display_board
    puts "-------------"
    puts "----#{@board[0]}----#{@board[1]}----#{@board[2]}"
    puts "-------------"
    puts "----#{@board[3]}----#{@board[4]}----#{@board[5]}"
    puts "-------------"
    puts "----#{@board[6]}----#{@board[7]}----#{@board[8]}"
  end

end
