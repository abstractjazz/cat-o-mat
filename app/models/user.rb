class User < ApplicationRecord
    has_many :cats  
    has_many :notes 
end
