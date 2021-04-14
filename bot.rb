require 'telegram_bot'

token = '1710661647:AAHUyMOSIoY9OnXELpqpZ8AumNS4Ofjwejg'

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
      reply.text = "Snek Stats 🐍 April 14th

ViperSwap Circ MC: $33,094,731
☝️+3.72%
CoinGecko #(If listed): 669
☝️ 4 spots
ViperSwap TVL: $18,043,244
☝️+9.38%
MC : TVL  Ratio: 1.83
👇
ViperPit TVL: $1,523,211
☝️+1.65%
xViper Value: 1.1469 $VIPER
☝️+.12%
$VIPER Value (via app): $1.08
☝️
$ONE Ratio: 1 : 7.31
☝️+3.25%
VenomDAO TG Members: 2,890
☝️+1.01%
Twitter Followers: 4,765
☝️+.63%
Reddit Members: 781
☝️1.17%"
    when /PriceChart/i
      reply.text = "https://twitter.com/SnekStats/status/1380682418147844098/photo/1"
      
    when /Tip/i
      reply.text ="Thanks for tipping! SnekStats is continously working to bring more value to the Harmony and VenomDAO ecosystem! Your support is always appreciated🐍 
      
      one1-style = one1dcy85036qy7jqvf8wrqef8smgkxyeeqsd5gq50 
      0x-style = 0x6E087A3e3a013D20312770C1949E1b458C4ce410"
    else
      reply.text = "I have no idea what #{command.inspect} means."
    end
    puts "sending #{reply.text.inspect} to @#{message.from.username}"
    reply.send_with(bot)
  end
end

