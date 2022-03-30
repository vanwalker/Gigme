class Offer < ApplicationRecord
  belongs_to :user
  has_many :bookings
  EVENTS = ["Anniversaire", "Fêtes Religieuses", "Bar/Restaurant/Hôtel", "Concert privé à domicile", "Festival", "Gala","Garden party", "Inauguration", "Mariage/Vin d'honneur/Cérémonie", "Soirée d'entreprise", "Autre"]
  STYLE = ["Bossa Nova/Latino","Chanson française", "Chorales/Gospel", "Classique", "Ensembles à cordes", "Funk/Soul/Disco", "Gipsy/Flamenco", "Guitaristes", "Hard rock/Metal", "Jazz/Jazz Manouche/Blues", "Mariachi", "Orchestres", "Pianistes","Pop/Rock", "Rap/Hip Hop", "Reggae", "Spectacles enfants", "Traditionnelle/Folk"]
  validates :event, inclusion: { in: EVENTS }
  validates :music_style, inclusion: { in: STYLE }
  has_one_attached :photo
end
