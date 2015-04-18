# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create!([
                  { name: 'Manda', id: 1, email: 'amanda@none.com', password: 'password', password_confirmation: 'password' },
                  { name: 'Sheila', id: 2, email: 'sheila@example.com', password: 'password', password_confirmation: 'password' },
                  { name: 'Alma', id: 3, email: 'alma@example.com', password: 'password', password_confirmation: 'password' },
                  { name: 'Anita', id: 4, email: 'anita@example.com', password: 'password', password_confirmation: 'password' },
                  { name: 'Walker', id: 5, email: 'Walker@none.com', password: 'password', password_confirmation: 'password' },
                  { name: 'Joemir', id: 6, email: 'joemir@example.com', password: 'password', password_confirmation: 'password' },
                  { name: 'Diego', id: 7, email: 'diego@example.com', password: 'password', password_confirmation: 'password' }
                ])
translations = Translation.create([
                  { core_language: "Let's dance!", target_language: 'Vamos dançar!', users: User.where(name: 'Manda') },
                  { core_language: "I'm hungry!", target_language: 'Eu estou com fome!', users: User.where(name: 'Sheila') },
                  { core_language: "I like dogs", target_language: 'Eu gosto de gatos', users: User.where(name: 'Walker') },
                  { core_language: "My name is...", target_language: "Meu nome é...", users: User.where(name: 'Alma') },
                  { core_language: "I am studying", target_language: 'Eu estou bebendo', users: User.where(name: 'Diego') },
                  { core_language: "I want to learn Portuguese", target_language: "Eu quero aprender alemão", users: User.where(name: 'Joemir') },
                  { core_language: "I don't want to swim", target_language: 'Eu não quero nadar', users: User.where(name: 'Anita') },
                  { core_language: "What's your name?", target_language: 'Qual é o seu nome?', users: User.where(name: 'Manda') },
                  { core_language: "How's it going?", target_language: 'Como vai?', users: User.where(name: 'Sheila') },
                  { core_language: "Does your dog like walks?", target_language: 'O seu cachorro gosta de caminhar?', users: User.where(name: 'Walker') },
                  { core_language: "What time is it?", target_language: "Que horas são?", users: User.where(name: 'Alma') },
                  { core_language: "How old are you?", target_language: "Quantos anos você tem?", users: User.where(name: 'Diego') },
                  { core_language: "I'm a web developer", target_language: 'Eu sou engenheira de websites', users: User.where(name: 'Manda') },
                  { core_language: "I like chocolate", target_language: 'Eu gosto de chocolater', users: User.where(name: 'Joemir') },
                  { core_language: "I will travel to Europe", target_language: 'Eu vou viajar para Europa', users: User.where(name: 'Manda') },
                  { core_language: "I speak English", target_language: 'Eu falo inglês', users: User.where(name: 'Walker') },
                  { core_language: "When did you arrive?", target_language: "Quando você chegou?", users: User.where(name: 'Sheila') }
                ])
