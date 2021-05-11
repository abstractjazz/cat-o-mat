class User < ApplicationRecord
    has_secure_password
    has_many :trades 
    has_many :cats, through: :trades 
    has_many :notes 
    has_many :minigames 
<<<<<<< HEAD
<<<<<<< HEAD
    has_many :cats_created, class_name: "Cat", foreign_key: "user_id"
=======
    has_many :cats_created, class_name: "Cat", foreign_key: "creator_id"
>>>>>>> rework_associations
=======
    # has_many :cats_created, class_name: "Cat", foreign_key: "user_id"
>>>>>>> 5a8d302057026b5d60c0303e6e3befc97133f6a9
    validates :username, presence: true, uniqueness: true
    validates :email, presence: true 

    scope :has_no_credits, -> {
        where("credits < 1") }

        def has_cat(cat)
            self.cats.include?(cat) 
            # || self.cats_created.include?(cat)
        end 
end
 