class Cat < ApplicationRecord
    has_many :trades 
    has_many :users, through: :trades  
    has_many :notes 
    has_many :users, through: :notes 

end
