require 'uri'
require 'net/http'
require 'openssl'
require 'date'
require 'humanize'

jenn_hourly_hash = Hash.new

tim = Time.now

count = Time.now.strftime('%M').to_i

loop_time = 

hash = Hash.new

def price_pull 
url = URI("https://coingecko.p.rapidapi.com/simple/price?ids=viper&vs_currencies=usd")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Get.new(url)
request["x-rapidapi-key"] = '4a65b0008bmsh90968da20abe454p10581bjsnc6a70a7e6e45'
request["x-rapidapi-host"] = 'coingecko.p.rapidapi.com'

   response = http.request(request)
   return eval(response.read_body)
end  

def vol_pull
  
end


loop do 

loop_time = Time.now.strftime('%M').to_i

  if loop_time == (count + 1)
    hash = price_pull
    count = loop_time
    jenn_hourly_hash["#{Time.now.strftime('%b').downcase}_#{Time.now.strftime('%d').to_i.humanize}_#{(Time.now.strftime('%H').to_i).humanize}_#{(Time.now.strftime('%M').to_i).humanize}".gsub("-","_").intern] = hash
    
    File.open('jenn_hourly_hash.rb', 'w+') do |f2|
    f2.puts jenn_hourly_hash
    end
    p jenn_hourly_hash
  end
  
next

end
