class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene
  
    def initialize(name)
      @name = name
      @bank_account = 25
      @happiness = 8
      @hygiene = 8
    end
  
    def clean?
      @hygiene > 7
    end
  
    def happy?
      @happiness > 7
    end
  
    def get_paid(amount)
      @bank_account += amount
      "all about the benjamins"
    end
  
    def take_bath
      @hygiene += 4
      "♪ Rub-a-dub just relaxing in the tub ♫"
    end
  
    def work_out
      @happiness += 2
      @hygiene -= 3
      "♪ another one bites the dust ♫"
    end
  
    def call_friend(friend)
      @happiness += 3
      friend.happiness += 3
      "Hi #{friend.name}! It's #{@name}. How are you?"
    end
  
    def start_conversation(friend, topic)
      case topic
      when "politics"
        @happiness -= 2
        friend.happiness -= 2
        "blah blah partisan blah lobbyist"
      when "weather"
        @happiness += 1
        friend.happiness += 1
        "blah blah sun blah rain"
      else
        "blah blah generic conversation"
      end
    end
  end
  
  person1 = Person.new("Alice")
  person2 = Person.new("Bob")
  puts person1.call_friend(person2)

  puts person1.start_conversation(person2, "weather")
