class User < ApplicationRecord
    has_secure_password
    has_many :cats  
    has_many :notes 
end
