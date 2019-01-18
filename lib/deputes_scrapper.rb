require 'rubygems'
require 'nokogiri'
require 'open-uri'
# Récupère et affiche le nom des députés
page = Nokogiri::HTML(open('https://www.nosdeputes.fr/deputes'))
nom = page.xpath("//*[@class='list_nom']")
nom.each do |name|
    puts name.text.split
end



