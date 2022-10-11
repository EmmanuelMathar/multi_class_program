
class ArchiveDiary
    
    def initialize
        #entries database
        @my_diary = {"diary" => [], "todo" => [], "contacts" => []}
    end 

    def add_diary(diary) #instance of live diary
        @my_diary["diary"] << diary
    end

    def read_diary
        #this call the whole diary/ past experiences
        @my_diary["diary"][0]
    end

    def add_todo(task) #instance of todo entry 
        @my_diary["todo"] << task

    end

    def add_number(contact)
        @my_diary["contacts"] << contact
        
    end

    def diary_reflec_time(wpm,time,count)
        #amount of words I can read based on the reading spend and time left
        amount_word_can_read = wpm * time
        if count >= amount_word_can_read
        return @my_diary["diary"]
        end
    end
        

    def full_diary
        return @my_diary
        # will return the whole diary including todo list and contacts
    end

end
