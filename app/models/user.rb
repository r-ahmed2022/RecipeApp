class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
         validates :name, presence: true
         has_many :foods
         has_many :recipes
         has_many :ingredients, through: :recipes
end
