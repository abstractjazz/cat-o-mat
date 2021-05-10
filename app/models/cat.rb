class Cat < ApplicationRecord
    has_many :trades 
    has_many :users, through: :trades 
    has_many :cats_commented, class_name: "Note", foreign_key: "cat_id"
    belongs_to :creator, class_name: "User", foreign_key: "creator_id"
    # has_many :users, through: :notes 
    
    
    #aliased, as in cats_commented
    
    validates :name, presence: true
    validates :cost, presence: true, numericality: true
    validates :cat_url, presence: { message: "must include a kitteh image. press the new button for a kitteh pic."}
end
