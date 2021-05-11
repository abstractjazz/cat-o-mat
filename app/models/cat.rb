class Cat < ApplicationRecord
    has_many :trades 
    has_many :users, through: :trades 
<<<<<<< HEAD
<<<<<<< HEAD
    has_many :cats_commented, class_name: "Note", foreign_key: "cat_id"
    has_many :users, through: :notes
    belongs_to :creator, class_name: 'User'
    
    #aliased, as in cats_commented
=======
    has_many :notes 
    belongs_to :creator, class_name: "User"

>>>>>>> 5a8d302057026b5d60c0303e6e3befc97133f6a9
    
=======
    has_many :notes, dependent: :destroy
    # has_many :users, through: :notes
    belongs_to :creator, class_name: "User", foreign_key: "creator_id"
>>>>>>> rework_associations
    validates :name, presence: true
    validates :cost, presence: true, numericality: true
    validates :cat_url, presence: { message: "must include a kitteh image. press the new button for a kitteh pic."}
end
