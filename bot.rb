require 'telegram_bot'
token = '1710661647:AAHCIfVdqgfFVOvLYucvYSCqCE3v3KL2u3w'
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
      /VenomDAOLinks
      /ContractAddresses
      /TokenEmissionSchedule
      /HowToGuides
      /LatestNews
      /Tip"
    when /DailyStats/i
      reply.text = "Snek Stats 🐍 April 29 2021

ViperSwap Circ MC: $32,310,966
👇-7.09%
CoinGecko Rank (If listed): 677
👇 25 spot(s)
ViperSwap TVL: $17,312,484
👇-6.18%
MC : TVL  Ratio: 1.87
👇
ViperPit TVL: $1,853,741
👇-7.03%
xViper Value: 1.1707 $VIPER
☝️+0.07%
$VIPER Value (via app): $1.06
👇-7.02%
$ONE Ratio: 1 : 7.94
☝️+2.06%
Discord Members: 615
☝️+3.89%
VenomDAO TG Members: 3,241
☝️+1.19%
Twitter Followers: 5,821
☝️+1.68%
Reddit Members: 1,091
☝️+1.7%%"
    when /PriceChart/i
      reply.text = "https://twitter.com/SnekStats/status/1387567153314897925?s=20"
      
    when /VenomDAOLinks/i
      reply.text = "🐍VenomDAO Official Links🐍

VenomDAO Governance:
VenomDAO Docs: https://docs.venomdao.org
VenomDAO Gov Forum: https://gov.venomdao.org
VenomDAO Gov Voting: https://governance.harmony.one

VenomDAO Medium Articles: 
Introduction: https://venomdao.medium.com/introducing-venomdao-viper-protocol-a-cross-chain-multi-product-defi-dao-launching-on-harmony-7ac84a7d76d3
How To Yield-Farm: https://venomdao.medium.com/how-to-yield-farm-viper-on-harmony-1f776e7f80cb
 
ViperSwap Official Domains:
https://viper.exchange
https://viperswap.one
https://viperswap.com
https://viperswap.io
https://viperswap.org

Telegram Channels:
VenomDAO Announcements Telegram: @VenomDAOAnn
VenomDAO Support Telegram: @VenomDAOSupport
VenomDAO Trading Telegram: @VenomDAOTrading

Discord Server:
VenomDAO Discord: https://bit.ly/VenomDAODiscord

Twitter:
https://twitter.com/VenomDAO"
    
    when /ContractAddresses/i
      reply.text = "Contracts:

Viper:
    One1: one1afvfayllrzc6ru0fhtr7705x4d32mhrewz4c77
    Eth: 0xEa589E93Ff18b1a1F1e9BaC7EF3E86Ab62addc79

xViper:
    One1: one1upj2dzv5ayuqy5x0aclgcr32chqfy32glsdusk
    Eth: 0xE064a68994e9380250CfEE3E8C0e2AC5C0924548"
    
    when /TokenEmissionSchedule/i
      reply.text = "https://docs.venomdao.org/viper/emission-schedule"
    
    when /HowToGuides/i
      reply.text = "Coming Zoon.."
    
    when /LatestNews/i
      reply.text = "https://twitter.com/VenomDAO/status/1387364524169236482?s=20"
       
    when /Tip/i
      reply.text ="Thanks for tipping! SnekStats is continously working to bring more value to the Harmony and VenomDAO ecosystem! Your support is always appreciated🐍
      
      one1-style = one1dcy85036qy7jqvf8wrqef8smgkxyeeqsd5gq50 
      0x-style = 0x6E087A3e3a013D20312770C1949E1b458C4ce410"
    else
      reply.text = "What would ya like to know? Choose a command below:
      /DailyStats
      /PriceChart
      /VenomDAOLinks
      /ContractAddresses
      /TokenEmissionSchedule
      /HowToGuides
      /LatestNews
      /Tip"
    end
    puts "sending #{reply.text.inspect} to @#{message.from.username}"
    reply.send_with(bot)
  end
end
