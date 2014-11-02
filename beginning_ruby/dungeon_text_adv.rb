#Dungeon Text Adventure

class Dungeon
  attr_accessor :player

  def initialize(player_name)
    @player = Player.new(player_name)
    @rooms = []
  end

 

  def add_room(reference, name, description, connections)
    @rooms << Room.new(reference, name, description, connections)
  end
  
  def start(location)
    @player.location = location
    show_current_description
  end
  
  def show_current_description
    find_room_in_dungeon(@player.location).full_description
  end

  def find_room_in_dungeon(reference)
    @rooms.detect {|room| room.reference == reference}
  end

  def find_room_in_direction(direction)
    find_room_in_dungeon(@player.location).connections[direction]
  end

  def go(direction)
    puts 'You go ' + direction.to_s
    @player.location = find_room_in_direction(direction)
    show_current_description
  end

  class Player
    attr_accessor :name, :location

    def initialize(name)
      @name = name 
    end

  end

  class Room

    attr_accessor :reference, :name, :description, :connections

    def initialize(reference, name, description, connections)
      @reference = reference
      @name = name
      @description = description
      @connections = connections
    end

    def full_description
      @name + "\n\n You are in " + @description
    end
  end

end

my_dungeon = Dungeon.new("Manny Fresh")

my_dungeon.add_room(:large_cave, "Large Cave", "a large cavernous cave", {:west => :small_cave})

my_dungeon.add_room(:small_cave, "Small Cave", "a small claustrophobic cave", {:east => :large_cave})

puts my_dungeon.start(:large_cave)

p my_dungeon.find_room_in_direction(:north)

puts my_dungeon.go(:west)

p my_dungeon.player.location
































































