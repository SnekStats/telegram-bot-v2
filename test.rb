File.open('message_creator.rb') do |f1| 
        string = eval f1.read
        p string
      end