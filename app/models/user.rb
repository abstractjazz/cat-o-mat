class User < ApplicationRecord
    has_secure_password
    has_many :trades 
    has_many :cats, through: :trades 
    has_many :notes 
    has_many :minigames 

    validates :username, presence: true, uniqueness: true
    validates :email, presence: true 
end
