require 'pry'

class Person

    attr_writer :name 
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def name
        @name
    end #should not need but error seemed to want a mthod not a attr 

    #overwriters 
    def bank_account=(value)
        @bank_account = value
    end
    def happiness=(value)
        @happiness = value
    end
    def hygiene=(value)
        @hygiene = value
    end


    def clean?
       if self.hygiene > 7  
            :true  
       else
            :false
    end
    def happy?
        if self.happiness > 7  
            :true  
        else
            :false
     end
     def get_paid(amount)
         self.bank_account += amount 
         "all about the benjamins"
     end
     def take_bath
        self.hygiene += 4 
        "♪ Rub-a-dub just relaxing in the tub ♫"
     end
     def  work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
     end
     def call_friend(friend)
        self.happiness += 3
        "Hi #{friend}! It's Stella. How are you?"
     end

     def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
                self.happiness += 1
                "blah blah sun blah rain"
        else
               "blah blah blah blah blah"
     end
    end

end
