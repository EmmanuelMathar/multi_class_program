class DiaryRead
    def initialize(wpm, diary)
        @wpm = wpm
        @diary = diary

    end  

def read_reflect(time)
    return @diary
end
def diary_reflec_time(wpm,time,count)
    #amount of words I can read based on the reading spend and time left
amount_word_can_read = wpm * time
   if count >= amount_word_can_read
    return @my_diary["diary"]
   end
end

end