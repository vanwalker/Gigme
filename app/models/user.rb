class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :bookings
  has_one :offer # has one offer?  il est 22h29... donc on affiche qu'une offre...oh lalala
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
