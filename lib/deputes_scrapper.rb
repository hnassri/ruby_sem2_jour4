require 'rubygems'
require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(open('https://www.nosdeputes.fr/deputes'))
nom = page.xpath("//*[@class='list_nom']")
nom.each do |name|
    puts name.text.split
end



