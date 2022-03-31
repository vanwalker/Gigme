class Offer < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
  EVENTS = ["Anniversaire", "Fêtes Religieuses", "Bar/Restaurant/Hôtel", "Concert privé à domicile", "Festival", "Gala","Garden party", "Inauguration", "Mariage/Vin d'honneur/Cérémonie", "Soirée d'entreprise", "Autre"]
  STYLE = ["Bossa Nova/Latino","Chanson française", "Chorales/Gospel", "Classique", "Ensembles à cordes", "Funk/Soul/Disco", "Gipsy/Flamenco", "Guitaristes", "Hard rock/Metal", "Jazz/Jazz Manouche/Blues", "Mariachi", "Orchestres", "Pianistes","Pop/Rock", "Rap/Hip Hop", "Reggae", "Spectacles enfants", "Traditionnelle/Folk"]
  validates :event, inclusion: { in: EVENTS }
  validates :music_style, inclusion: { in: STYLE }

  IMAGES = ["https://res.cloudinary.com/mavana/image/upload/v1648647740/gig/the-last-waltz-concert-the-band-01_d3rfhr.jpg",
     "https://res.cloudinary.com/mavana/image/upload/v1648647722/gig/people-music-band-acoustic-guitar-keyboard-drums-isolated-white-background-189949646_aoslqs.jpg",
     "https://res.cloudinary.com/mavana/image/upload/v1648647706/gig/joan-jett-runaways_pi5znw.jpg",
     "https://res.cloudinary.com/mavana/image/upload/v1648647692/gig/c4d84dee8452cdacaf2ae8d0ed79c21f24-20-roxy-music.rsocial.w1200_bd7ddd.jpg",
     "https://res.cloudinary.com/mavana/image/upload/v1648647682/gig/100-best-rock-bands-of-the-2010s_p6sosb.jpg",
     "https://res.cloudinary.com/mavana/image/upload/v1648647677/gig/5bb26c6d9fb84c06520f607b_uvdw1k.jpg",
     "https://res.cloudinary.com/mavana/image/upload/v1648647673/gig/6d043f817df5b96f2849fa562bfdb202-1200-80_i5qv31.jpg",
     "https://res.cloudinary.com/mavana/image/upload/v1648647670/gig/diverse-young-band-playing-a-song-together-in-a-home-music-studio-picture-id1355093071_ulf8up.jpg",
     "https://res.cloudinary.com/mavana/image/upload/v1648647669/gig/photo-1499364615650-ec38552f4f34_qukyze.jpg",
     "https://res.cloudinary.com/mavana/image/upload/v1648647668/gig/1200px-Mary_Timony_Plays_Helium_with_Hospitality_pbqkvw.jpg"
  ]
end
