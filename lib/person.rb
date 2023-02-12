class Person
    attr_reader   :name ,   :happiness ,   :hygiene 
    attr_accessor   :bank_account 

    #When a new person is created, they should have the following attributes 
    def   initialize ( name ,   bank_account = 25 ,   happiness = 8 ,   hygiene = 8 )
        @name   =   name 
        @bank_account   =   bank_account 
        @happiness   =   happiness 
        @hygiene   =   hygiene 
    end 

    #sets the value of the person's happiness points. The maximum value allowed is 10, and the minimum value allowed is 0.
    def   happiness= ( happiness )
        @happiness   =   happiness 
        @happiness   =   10   if   @happiness   >   10 
        @happiness   =   0   if   @happiness   <   0 
    end 

    def   hygiene= ( hygiene )
        @hygiene   =   hygiene 
        @hygiene   =   10   if   @hygiene   >   10 
        @hygiene   =   0   if   @hygiene   <   0 
    end 

    #returns true if the person's happiness is more than seven; otherwise, it returns false.
    def   happy? 
        @happiness   >   7 
    end 

    # returns true if the person's hygiene is more than seven; otherwise, it returns false.
    def   clean? 
        @hygiene   >   7 
    end 

    # accepts a salary amount and adds this to the person's bank account
    def   get_paid ( salary )
        @bank_account   +=   salary 
        "all about the benjamins" 
    end 

    #increments the person's hygiene points by four and returns the string 
    def   take_bath 
        self .hygiene   +=   4 
        "♪ Rub-a-dub just relaxing in the tub ♫" 
    end 

    # increments the person's happiness by two points, decreases their hygiene by three points, and returns the Queen lyrics,
    def   work_out 
        self .happiness   +=   2 
        self .hygiene   -=   3 
        "♪ another one bites the dust ♫" 
    end 

    #accepts another instance of the Person class, or "friend"
    def   call_friend ( friend )
        self .happiness   +=   3 
        friend .happiness   +=   3 
        "Hi #{friend.name}! It's #{self.name}. How are you?" 
    end 

    #accept two arguments, the friend to start a conversation with and the topic of conversation.
    def   start_conversation ( friend ,   topic )
        case   topic 
        when   "politics" 
            self .happiness   -=   2 
            friend .happiness   -=   2 
            "blah blah partisan blah lobbyist" 
        when   "weather" 
            self .happiness   +=   1 
            friend .happiness   +=   1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end