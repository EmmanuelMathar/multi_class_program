
require "archive_diary"
require "live_diary"
require "todo_entry"
require "contact_number"
require "diary_read"


RSpec.describe ArchiveDiary do 
    it " integration LiveDiary" do 
        archive_diary = ArchiveDiary.new
        live_diary1 = LiveDiary.new("diary1", "I have worked on 3 projects")
        archive_diary.add_diary(live_diary1)
        expect(archive_diary.read_diary).to eq live_diary1

    end
    it "integreation TOdo entry" do 
        archive_diary = ArchiveDiary.new
        todo_entry1 = TodoEntry.new("wash the dishes")
        expect(archive_diary.add_todo(todo_entry1)).to eq [todo_entry1]

    end
    it "integration contact number" do 
        archive_diary = ArchiveDiary.new
        number1 = ContactNumber.new("Manuel", "0712385065")
        expect(archive_diary.add_number(number1)).to eq [number1]
    
    end
    it "returns the title and content" do 
        archive_diary = ArchiveDiary.new
        live_diary1 = LiveDiary.new("Monday 10th", " We are working on debugging")
        live_diary2 = LiveDiary.new("Monday 24th", " We debugging")
        live_diary3 = LiveDiary.new("Mondays", (" Weg ") * 102)
        archive_diary.add_diary(live_diary1)
        archive_diary.add_diary(live_diary2)
        archive_diary.add_diary(live_diary3)
        expect(archive_diary.full_diary).to eq "diary" => [live_diary1, live_diary2, live_diary3], "todo" => [], "contacts" => []
    end

    it "returns the title and content" do 
        archive_diary = ArchiveDiary.new
        live_diary1 = LiveDiary.new("Monday 10th", " We are working on debugging")
        archive_diary.add_diary(live_diary1)
        expect(archive_diary.diary_reflec_time(1, 5,live_diary1.count_words)).to eq [live_diary1]
    end

end


