require 'pry'
class Person
  attr_accessor :happiness, :bank_account
  attr_reader :name, :hygiene
  def initialize (name)
    @name = name
    @bank_account = 25
    @hygiene = 8
    @happiness = 8
  end

  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def happiness=(value)
    @happiness = value
    @happiness = 10 if @happiness > 10 # I don't understand why this works
    @happiness = 0 if happiness < 0    # and so does this?
  end

  def hygiene=(value)
    @hygiene = value
    @hygiene = 10 if @hygiene > 10
    @hygiene = 0 if @hygiene < 0
  end

  def get_paid(salary)
    @bank_account += salary
    self.happiness += 4 #because as if getting paid doesn't make you happier
    "all about the benjamins" #because apparently this person is a dumbass
  end

  def take_bath
    self.hygiene += 4 #because apparently this person is a dirty bastard who doesn't know how to wash themselves
    "♪ Rub-a-dub just relaxing in the tub ♫" #I actually hate that I have to write this
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
    "♪ another one bites the dust ♫"
    end

  def call_friend(friend)
    [friend, self].each {|a| a.happiness += 3}
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation (friend, topic)
    if topic == "politics"
      self.happiness -= 2
      friend.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      friend.happiness += 1
      "blah blah sun blah rain"
    else "blah blah blah blah blah"
    end
  end
end