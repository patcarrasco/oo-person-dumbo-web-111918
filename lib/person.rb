# your code goes here
require 'pry'

class Person


  def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end

  attr_reader :name, :hygiene, :happiness
  attr_accessor :bank_account




  def hygiene=(num)
    if (@hygiene + num) >= 0 && (@hygiene + num) <= 10
      @hygiene = num
      # binding.pry
    end
  end


  def happiness=(num)
    if (@happiness + num) >= 0 && (@happiness + num) <= 10
      @happiness = num
    end
  end


  def clean?
    @hygiene > 7
  end

  def happy?
    @happiness > 7
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    hygiene=(4)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  # def work_out
  #   @hygiene -= 3
  # end

  # def call_friend(person_name)
  #   person_name.happiness(3)
  # end
end

binding.pry
