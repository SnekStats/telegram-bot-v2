require 'humanize'

jenn_hourly_hash = Hash.new
current_price_hash = Hash.new
    
    
price_min_change = 

price_fifteen_min_change = 

price_hour_change =


File.open('jenn_hourly_hash.rb', 'r') do |f1|
    jenn_hourly_hash = eval(f1.gets)
    current_price_hash = jenn_hourly_hash["#{Time.now.strftime('%b').downcase}_#{Time.now.strftime('%d').to_i.humanize}_#{(Time.now.strftime('%H').to_i).humanize}_#{(Time.now.strftime('%M').to_i).humanize}".gsub("-","_").intern]
    
end



puts  "TokenJenny | JENN
      
Price: $#{current_price_hash[:viper][:usd].round(4)}"
# 3m:#{price_min_change}%  15m:#{price_fifteen_min_change}%  1hr:#{price_hour_change}%"
=begin
File.open('bot_message.txt', 'w+') do |f2|
    f2 << message
    end
    p message
=end