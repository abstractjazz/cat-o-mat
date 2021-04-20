class Cat < ApplicationRecord
    has_many :trades 
    has_many :users, through: :trades
    has_many :notes 
    has_many :users, through: :notes


    validates :name, presence: true
    validates :cost, presence: true, numericality: true
    validates :cat_url, presence: true
end
