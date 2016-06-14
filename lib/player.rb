class Player

  @@all = []

  attr_accessor :name, :token, :record

  def initialize(name)
    @name = name
    @record = {:win => 0, :loss => 0, :draw =>0 }
    @torken
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by(name)
    player = @@all.select {|person| person.name == name }
      if player == []
        player = Player.new(name)
      end
  end





end
