
class Participant
  attr_accessor :name

  def initialize
  end
end

class Room
  attr_accessor :name, :messages

  def initialize(name)
    @name = name
  end

  def someone_spoken(who, what, time)
    #empty
  end
end


class Domain
  attr_accessor :room

  def domain_starts(room_name)
    @room = Room.new(room_name)
  end

  def participant_speaks(who, what, time)
    to_whom = Channel.fetch_receivier(what)
    someone_spoken_in_room(who, to_whom, what, time)
  end

  def someone_spoken_in_room(who, to_whom, what, time)
    @room.someone_spoken(who, what, time)
  end

  def bot_speaks(what)
    #blank intentionally
  end


end
