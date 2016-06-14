class Player

  @@all = []

  attr_accessor :name, :token, :record

  def initialize(hash)
    @name = hash[:name]
    @token = hash[:token]
    @record = {:win => 0, :loss => 0, :draw =>0 }
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by(name)
    player = @@all.select {|person| person.name == name }
    player == [] ? Player.new({name: name}) : player
  end

  def token_assignment
    puts "Would you like to be X or O?"
    token = gets.chomp.upcase
    @player.select_token(token)
  end



  def select_token(token)
    binding.pry
    @player.token = token
  end

  def turn

  end

end
