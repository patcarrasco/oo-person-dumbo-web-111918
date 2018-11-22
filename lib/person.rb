# your code goes here
require 'pry'

class Person
    attr_reader :name, :bank_account, :happiness, :hygiene
    attr_writer :bank_account

    #here we are establishing the variables 
  def initialize(name)
    @name = name
    @happiness = 8
    @hygiene = 8
    @bank_account = 25
  end

  #Writter(allows us to overwrite instance variables)
def hygiene=(num)
    if num > 10
        @hygiene = 10
    elsif num < 0
        @hygiene =0    
    else
        @hygiene = num
    end
end
  #Writter(allows us to overwrite instance variables)
  def happiness=(num)
        if num > 10
            @happiness = 10
        elsif num < 0
            @happiness =0    
        else
            @happiness = num
        end
  end

  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene = (@hygiene + 4)
    # hygiene = (@hygiene + 4)  
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene = (@hygiene - 3)
    self.happiness = (@happiness + 2)
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness +=3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end


def start_conversation(friend,topic)
    if topic == "politics"
        self.happiness -=2
        friend.happiness -=2
        return "blah blah partisan blah lobbyist"
        # binding.pry
    elsif topic == "weather"
        self.happiness +=1
        friend.happiness +=1
        return "blah blah sun blah rain"
    else
        return "blah blah blah blah blah"
    end
end
end


# binding.pry
