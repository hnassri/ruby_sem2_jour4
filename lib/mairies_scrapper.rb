

require 'rubygems'
require 'nokogiri'  
require 'open-uri'






# -------- Obtenir l'url de la mairie ----------
def get_townhall_urls(city)
page = Nokogiri::HTML(open('https://www.annuaire-des-mairies.com/95/' + city.split.join('-'))) #change les espaces par des -
return page
end






city = ""



# -------- Récupérer email ----------
def get_townhall_email(townhall_url)
    email = townhall_url.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]')
    return email.text
end


# -------- Créer un tableau avec les noms de ville ----------

    page = Nokogiri::HTML(open('http://annuaire-des-mairies.com/val-d-oise.html'))


    nom_ville = page.xpath ('//*[@class= "lientxt"]') #Extrait le nom de la ville



    # Arrays --
    tab_nom_ville = []
    arr_email = []
    # --------



    nom_ville.each do |name| #
        tab_nom_ville << name.text.downcase #Tableau où se trouve les noms de ville en minuscule
    end



nom_ville.take(5) do |name|
    
    city = name
    get_townhall_urls(city)
    townhall_url = get_townhall_urls(city) #l'url de la ville = get url de la ville
    get_townhall_email(townhall_url).text
    if get_townhall_email(townhall_url).text =~ /@/
        arr_email << get_townhall_email(townhall_url).text

    else
        arr_email << "bidon@gmail.com" #Remplace les endroits ou il n'y a pas d'email par bidon@gmail.com
    end


end
puts arr_email

hash_come =  Hash[tab_nom_ville.zip(arr_email.map)]
array = []


hash_come.each do |key, value|  
    hash = Hash.new
    hash[key] = value
    array << hash

end

# puts array










