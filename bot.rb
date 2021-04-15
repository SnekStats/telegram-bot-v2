require 'telegram_bot'

token = '1710661647:AAHl56eseiGfXU-kH-hx6VY6P15RbQ5q1gI'

bot = TelegramBot.new(token: token)

bot.get_updates(fail_silently: true) do |message|
  puts "@#{message.from.username}: #{message.text}"
  command = message.get_command_for(bot)
  
  message.reply do |reply|
    case command
    when /start/i
      reply.text = "What would ya like to know? Choose a command below:
      /DailyStats
      /PriceChart
      /Tip"
    when /DailyStats/i
      reply.text = "Snek Stats 🐍 April 15th

ViperSwap Circ MC: $32,876,401
👇-.66%
CoinGecko #(If listed): 671
👇 2 spots
ViperSwap TVL: $18,450,489
☝️+2.26%
MC : TVL  Ratio: 1.78
👇
ViperPit TVL: $1,495,720
👇-1.80%
xViper Value: 1.1479 $VIPER
☝️+.09%
$VIPER Value (via app): $1.11
☝️+2.77%
$ONE Ratio: 1 : 7.38
☝️+.96%
VenomDAO TG Members: 2,906
☝️+.55%
Twitter Followers: 4,808
☝️+.90%
Reddit Members: 790
☝️1.15%"
    when /PriceChart/i
      reply.text = "https://twitter.com/SnekStats/status/1382517105375936513?s=20"
      
    when /Tip/i
      reply.text ="Thanks for tipping! SnekStats is continuously working to bring more value to the Harmony and VenomDAO ecosystem! Your support is always appreciated🐍 
      
      one1-style = one1dcy85036qy7jqvf8wrqef8smgkxyeeqsd5gq50 
      0x-style = 0x6E087A3e3a013D20312770C1949E1b458C4ce410"
    else
      reply.text = "I have no idea what #{command.inspect} means."
    end
    puts "sending #{reply.text.inspect} to @#{message.from.username}"
    reply.send_with(bot)
  end
end

