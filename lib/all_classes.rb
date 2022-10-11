
class LiveDiary
As a user So that I can record my experiences
I want to keep a regular diary

end

class TodoEntry
As a user So that I can keep track of my tasks
I want to keep a todo list along with my diary
end

#1. Describe the Problem

As a user So that I can record my experiences 
I want to keep a regular diary

As a user So that I can reflect on my experiences  
I want to read my past diary entries

#As a user So that I can reflect on my experiences in my busy day
#I want to select diary entries to read based on how much time I have and my reading speed


def diary_reflec_time(wpm, time)
    #amount of words I can read based on the reading spend and time left
    amount_word_can_read = wpm * time
    return  @my_diary["diary"].select do |element| 
    element.count(" ")
    end
    
end
it "returns the title and content" do 
    archive_diary = ArchiveDiary.new
    live_diary1 = LiveDiary.new("Monday 10th", " We are working on debugging")
    archive_diary.add_diary(live_diary1)
    expect(archive_diary.diary_reflec_time(1, 5,live_diary1.count_words)).to eq [live_diary1]
end
it " integration reading" do 
    archive_diary = ArchiveDiary.new
    live_diary1 = LiveDiary.new("Monday 10th", " We are working on debugging")
    live_diary2 = LiveDiary.new("Monday 24th", " We debugging")
    live_diary3 = LiveDiary.new("Mondays", " We debugging")
    archive_diary.add_diary(live_diary1)
    archive_diary.add_diary(live_diary2)
    archive_diary.add_diary(live_diary3)
    expect(live_diary1.diary_reflec_time(15,20)).to eq [[live_diary1],[live_diary2]]
end

As a user So that I can keep track of my tasks
I want to keep a todo list along with my diary

As a user So that I can keep track of my contacts classs 
I want to see a list of all of the mobile phone numbers in all my diary entries

it "integration reader" do 
    diary = ArchiveDiary.new
    reader = DiaryRead.new(5, diary)
    diary1 = LiveDiary.new("Monday 10th", " We are working on debugging")
    diary2 = LiveDiary.new("Monday 24th", " We debugging")
    diary3 = LiveDiary.new("Mondays", (" Weg ") * 102)
    diary.add_diary(diary1)
    diary.add_diary(diary2)
    diary.add_diary(diary3)
    expect(reader.read_reflect(20)).to eq ""


end 


#3. Create Examples as Integration Tests
        archive_diary = ArchiveDiary.new
        archive_diary.diary_reflec_time(1,20) #returns nill

        archive_diary = ArchiveDiary.new
        diary1 = LiveDiary.new("Monday 10th", " We are working on debugging")
        archive_diary.diary_reflec_time(1,5) #returns [[ "Monday 10th", " We are working on debugging"]]

        archive_diary = ArchiveDiary.new
        diary = LiveDiary.new("Monday 24th", " We debugging")
        diary1 = LiveDiary.new("Mondays", (" Weg ") * 102)
        archive_diary.add_diary(diary)
        archive_diary.add_diary(diary1)
        archive_diary.diary_reflec_time(1,104) #returns [["Monday 24th", " We debugging "], [Mondays", (" Weg ") *102]]]
        #"Monday 24th, We debugging "  "Mondays,  Weg "





#4. Create Examples as Unit Tests


#5. Implement the Behaviour