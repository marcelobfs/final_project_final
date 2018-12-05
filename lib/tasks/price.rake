
namespace :get do
task :price => :environment do
 
    require 'open-uri'
    	
    #Boi Gordo
	html_source = open("https://www.scotconsultoria.com.br/cotacoes/boi-gordo/").read
	doc=Nokogiri::HTML(html_source)
	
	data_raw=doc.css(".conteudo_centro .conteudo_centro h2")
	last_update_bull = data_raw.text.to_s[17..27]

	trintadias_raw=doc.css(".fonte-subtitulo-cinza:nth-child(19) table td:nth-child(2) td")
    price_bull = trintadias_raw.text.first(5).gsub(",",".")
    
    observation_bull = "30 dias - Cuiaba"
    age_group_bull = "Abate" 
    gender_bull = "Boi"
    
    MarketPrice.create!(last_update: last_update_bull, price: price_bull, observation: observation_bull,age_group: age_group_bull,gender: gender_bull)
    
    #Vaca Gorda
    
    html_source = open("https://www.scotconsultoria.com.br/cotacoes/vaca-gorda/").read
	doc=Nokogiri::HTML(html_source)
	
	data_raw=doc.css("font h2")
	last_update_cow = data_raw.text.to_s[34..43]

	trintadias_raw=doc.css(".fonte-subtitulo-cinza:nth-child(36) table td:nth-child(2) td:nth-child(1)")
    price_cow = trintadias_raw.text.first(5).gsub(",",".")
    
    observation_cow = "30 dias - Cuiaba"
    age_group_cow = "Abate" 
    gender_cow = "Vaca"
    
	MarketPrice.create!(last_update: last_update_cow, price: price_cow, observation: observation_cow,age_group: age_group_cow,gender: gender_cow)
    
    
 #   #Bezerro
    html_source = open("https://www.scotconsultoria.com.br/cotacoes/reposicao/").read
    doc2=Nokogiri::HTML(html_source)
	
	data_raw=doc2.css("style+ table th")
	last_update_calf = data_raw.text.to_s[15..25]
	
	bezerro_raw=doc2.css("style+ table .conteudo:nth-child(7) td:nth-child(9)")
	price_calf = bezerro_raw.text
	
	observation_calf = "Reposicao - Cuiaba"
    age_group_calf = "12M" 
    gender_calfo = "Macho"

    MarketPrice.create!(last_update: last_update_calf, price: price_calf, observation: observation_calf,age_group: age_group_calf,gender: gender_calfo)
    
    
    bezerra_raw=doc2.css("table:nth-child(6) .conteudo:nth-child(7) td:nth-child(9)")
    price_calf = bezerra_raw.text

    gender_calfa = "Femea"
    
    MarketPrice.create!(last_update: last_update_calf, price: price_calf, observation: observation_calf,age_group: age_group_calf,gender: gender_calfa)
    
	
	end
end
