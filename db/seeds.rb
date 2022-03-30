# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'json'
require 'faker'


puts "Cleaning up database..."
Offer.destroy_all
User.destroy_all
puts "Database cleaned"

user_1 = User.create(email: "kelly@gmail.com", first_name: "kelly", last_name: "Le Goff", username: "Kel", password: "loulou")
EVENTS = ["Anniversaire", "Fêtes Religieuses", "Bar/Restaurant/Hôtel", "Concert privé à domicile", "Festival", "Gala","Garden party", "Inauguration", "Mariage/Vin d'honneur/Cérémonie", "Soirée d'entreprise", "Autre"]
STYLE = ["Bossa Nova/Latino","Chanson française", "Chorales/Gospel", "Classique", "Ensembles à cordes", "Funk/Soul/Disco", "Gipsy/Flamenco", "Guitaristes", "Hard rock/Metal", "Jazz/Jazz Manouche/Blues", "Mariachi", "Orchestres", "Pianistes","Pop/Rock", "Rap/Hip Hop", "Reggae", "Spectacles enfants", "Traditionnelle/Folk"]
# file = URI.open('https://i.picsum.photos/id/690/1000/400.jpg?hmac=aXMS_vHUq1Mjy-3begyAJFn5zxWqUMeC2I0brdma1sU')
100.times do |i|
  # puts "Importing movies from page #{i + 1}"
  # movies = JSON.parse(URI.open("#{url}?page=#{i + 1}").read)['results']
  # offers.each do |offer|
    # base_poster_url = "https://image.tmdb.org/t/p/original"
  Offer.create(
      title: Faker::Music.band,
      description: Faker::Lorem.paragraphs,
      price: rand(100..1000),
      place: Faker::Address.city,
      event: EVENTS.sample,
      music_style: STYLE.sample,
      user: user_1,
  )
end
puts "bands created"
