class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true , uniqueness: true
  has_secure_password
  has_many :shortest_paths
  #has_many :recipes
end
