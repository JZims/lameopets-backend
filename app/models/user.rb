class User < ApplicationRecord
    has_secure_password 

    has_many :adoptions
    has_many :pets, through: :adoptions
    has_many :inventories
    has_many :items, through: :inventories

    validates :name, presence: true
    validates :name, uniqueness: true
    validates :password, length: {minimum: 8}

    


end
