# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Simple user to sistem.
user1 = User.create(name: 'Usuário1', email: "usuario1@email.com",
 birthday: Date.new(2016,12,1), address: "Endereço do usuário1.",
 nickname: "usuario1", cpf: "04510241178", admin: false, password: "senha123",
 password_confirmation: "senha123")

# A admin user.
admin = User.create(name: 'Administrador', email: "admin@email.com",
 birthday: Date.new(2016,12,2), address: "Endereço do administrador.",
 nickname: "admin", cpf: "04510241178", admin: true,
 password: "senha123", password_confirmation: "senha123", approval: true)