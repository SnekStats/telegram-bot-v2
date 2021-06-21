require 'telegram_bot'
require '~/snek_stats_bot/coingecko_api_ping.rb'


token = '1710661647:AAHCIfVdqgfFVOvLYucvYSCqCE3v3KL2u3w'
bot = TelegramBot.new(token: token)

bot.get_updates(fail_silently: true) do |message|
  puts "@#{message.from.username}: #{message.text}"
  command = message.get_command_for(bot)
  
  message.reply do |reply|
    case command
    
    when /start/i
      reply.text = "What would ya like to know? Choose a command below:
      /priceVIPER
      /priceONE
      /priceJENN
      /dailyStats
      /weeklyStats
      /venomDAO
      "
    when /DailyStats/i
      reply.text = "Snek Stats 🐍 May 31 2021

~$VIPER Value (via app): $1.15~
1D:️☝️+2.68% 1W:☝️+19.79%
~ViperSwap Circ MC: $36,334,835~
1D:☝️+2.62% 1W:☝️+19.90%
~ViperSwap Trading Volume: $1,572,585~
1D:☝️+41.58% 1W:👇-19.87%
~ViperSwap TVL: $24,176,592~
1D:☝️+4.27% 1W:☝️+24.79%
~ViperPit TVL: $2,092,136~
1D:☝️+2.35% 1W:☝️+10.49%
~MC : TVL  Ratio: 1.50~
1D:👇 1W:👇
~xViper Value: 1.2035 $VIPER~
1D:☝️+0.11% 1W:☝️+0.54%
~$ONE Ratio: 1 : 12.031 $VIPER~
1D:👇-5.50% 1W:☝️+9.69%
~CoinGecko Rank: 506~
1D:☝️️ 2 spot(s) 1W:☝️️ 21 spot(s)
~Discord Members: 2,324~
1D:☝️+0.30% 1W:☝️+2.42%
~VenomDAO TG Members: 3,806~
1D:☝️+0.21% 1W:☝️+2.01%
~Twitter Followers: 8,063~
1D:☝️+0.19% 1W:☝️+2.05%
~Reddit Members: 1,800~
1D:☝️+0.50% 1W:☝️+8.04%"

    when /venomDAO/i
      reply.text = "🐍VenomDAO Official Links🐍
      
VenomDAO Statistical Information: https://info.viper.exchange/

Contracts:

Viper:
    One1: one1afvfayllrzc6ru0fhtr7705x4d32mhrewz4c77
    Eth: 0xEa589E93Ff18b1a1F1e9BaC7EF3E86Ab62addc79

xViper:
    One1: one1upj2dzv5ayuqy5x0aclgcr32chqfy32glsdusk
    Eth: 0xE064a68994e9380250CfEE3E8C0e2AC5C0924548

CoinGecko Listing: 
ViperSwap: https://www.coingecko.com/en/exchanges/viperswap
$VIPER: https://www.coingecko.com/en/coins/viper

VenomDAO Governance:
VenomDAO Docs: https://docs.venomdao.org
VenomDAO Gov Forum: https://gov.venomdao.org
VenomDAO Gov Voting: https://governance.harmony.one

Token Emission Schedule: https://docs.venomdao.org/viper/emission-schedule

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
VenomDAO Main Telegram: @VenomDAO
VenomDAO Announcements Telegram: @VenomDAOAnn
VenomDAO Support Telegram: @VenomDAOSupport
VenomDAO Trading Telegram: @VenomDAOTrading

Discord Server:
VenomDAO Discord: https://bit.ly/VenomDAODiscord

Twitter:
https://twitter.com/VenomDAO

Reddit:
https://www.reddit.com/r/ViperSwap/"
    
       
    else
      reply.text = "What would ya like to know? Choose a command below:
      /priceVIPER
      /priceONE
      /priceJENN
      /dailyStats
      /weeklyStats
      /venomDAO
      "
    end
    puts "sending #{reply.text.inspect} to @#{message.from.username}"
    reply.send_with(bot)
  end
end