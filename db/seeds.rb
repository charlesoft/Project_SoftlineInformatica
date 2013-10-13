# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

	State.create({:name => "Acre", :uf => "AC"})
	State.create({:name => "Alogoas", :uf => "AL"}, {:name => "Amazonas", :uf => "AM"})
	State.create({:name => "Amazonas", :uf => "AM"})
	State.create({:name => "Bahia", :uf => "BA"})
	State.create({:name => "Ceara", :uf => "CE"})
	State.create({:name => "Distrito Federal", :uf => "DF"})
	State.create({:name => "Espirito Santo", :uf => "ES"})
	State.create({:name => "Goias", :uf => "GO"})
	State.create({:name => "Maranhao", :uf => "MA"})
	State.create({:name => "Minas Gerais", :uf => "MG"})
	State.create({:name => "Mato Grosso", :uf => "MT"})
	State.create({:name => "Mato Grosso do Sul", :uf => "MS"})
	State.create({:name => "Para", :uf => "PA"})
	State.create({:name => "Paraiba", :uf => "PB"})
	State.create({:name => "Pernambuco", :uf => "PE"})
	State.create({:name => "Piaui", :uf => "PI"})
	State.create({:name => "Parana", :uf => "PR"})
	State.create({:name => "Rio de Janeiro", :uf => "RJ"})
	State.create({:name => "Rio Grande do Norte", :uf => "RN"})
	State.create({:name => "Rondonia", :uf => "RO"})
	State.create({:name => "Roraima", :uf => "RR"})
	State.create({:name => "Rio Grande do Sul", :uf => "RS"})
	State.create({:name => "Santa Catarina", :uf => "SC"})
	State.create({:name => "Sergipe", :uf => "SE"})
	State.create({:name => "Sao Paulo", :uf => "SP"})
	State.create({:name => "Tocantins", :uf => "TO"})

 	#state = State.find(5)
 	#state.destroy 

 	
