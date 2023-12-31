class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
             :recoverable, :rememberable, :validatable
             
  has_many :rooms
  has_many :resarvations
  has_one_attached :image
    
def self.ransackable_associations(auth_object = nil)
    ["room"] #アソシエーション先を記述
end
end
