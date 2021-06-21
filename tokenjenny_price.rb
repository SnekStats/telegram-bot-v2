require 'humanize'
require 'telegram_bot'

token = '1845937552:AAGqN-joYN79Vz-ItDQvFNispJnqFMh-9n4'
bot = TelegramBot.new(token: token)
 
bot.get_updates(fail_silently: true) do |message|
  puts "@#{message.from.username}: #{message.text}"
  command = message.get_command_for(bot)
  
    
  message.reply do |reply|
    
    case command
    
    when /start/i
      reply.text = "What would ya like to know? Choose a command below:
      /pricejenn
      "
    
    when /pricejenn/i
      
      reply.text = File.open('message_creator.rb') do |f1| 
        string = eval f1.read
        string
      end
      #File.open('bot_message.txt', 'r') do |f1|
           #              f1.read
                         
            #           end
                  
      
      #require 'message_creator.rb'
      #File.open('bot_message.rb', 'r') do |f1|
      #               puts ft.gets
      #             end
      

    end
    puts "sending #{reply.text.inspect} to @#{message.from.username}"
    reply.send_with(bot)
  end
end


#priceJENN calc in seperate program // vol+price-1/15/60min change

#Trading Volume: $65,566
#1m:#{vol_min_change}%  15m:#{vol_fifteen_min_change}%  1hr:#{vol_hour_change}%
