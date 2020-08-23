class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :token_authenticatable,
         :recoverable, :rememberable, :validatable

  has_many :shops
  has_many :products
  has_many :serviceorders
  has_many :productorders
  has_many :prodorderfeedbacks      

end
