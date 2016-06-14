class Game

  attr_accessor :board, :computer, :player

  def initialize
    # @board = Board.new
    # @player = Player.new
    # @computer = Computer.new
  end

  def greeting
    puts "Welcome to Tic Tac Toe"
    puts "What is your name"
  end

  def player_info
    name = gets.chomp
    @player = Player.find_or_create_by(name)
  end

  def token_assignment
    puts "Would you like to be X or O?"
    token = gets.chomp.upcase
    @player.select_token(token)
  end



  def start
    greeting
    player_info
    token_assignment
  end

end
