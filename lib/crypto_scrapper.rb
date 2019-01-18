require 'pry'
require 'rubygems'
require 'nokogiri'  
require 'open-uri'


def crypto_scrapper
   page = Nokogiri::HTML(open('https://coinmarketcap.com/all/views/all/'))

   name_crypto = []
   price_crypto = []


   #---- récupère les noms ---

   link = page.xpath('//*/td[3]')
   link.each do |name|
      name_crypto << name.text
   end



   #---- récupère les prix ---

   link = page.xpath('//*[@class="price"]')
   link.each do |price|
      price_crypto << price.text
   end



   #---- création du hash final ---

   hashpn =  Hash[name_crypto.zip(price_crypto.map)]
   hashpn.each {|k, v| v[0] = "" }
   hashpn.transform_values!(&:to_f)
   

   #---- création des Hashs ---

   arraypn = []
   hashpn.each do |key, value| 
      hash = Hash.new
      hash[key] = value
      arraypn << hash
   end
      return arraypn
   end
