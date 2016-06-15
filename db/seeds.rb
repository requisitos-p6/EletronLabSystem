# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

one_date = Date.new(2016,12,1)
user1 = User.create(name: 'Usuário1', email: "usuario1@email.com",
 birthday: one_date, address: "Endereço do usuário1.",
 nickname: "Apelido do usuário1", cpf: "000.000.000-01")
