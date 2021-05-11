class User < ApplicationRecord
    has_secure_password
    has_many :trades 
    has_many :cats, through: :trades 
    has_many :notes 
    has_many :minigames 
    # has_many :cats_created, class_name: "Cat", foreign_key: "user_id"
    validates :username, presence: true, uniqueness: true
    validates :email, presence: true 

    scope :has_no_credits, -> {
        where("credits < 1") }

        def has_cat(cat)
            self.cats.include?(cat) 
            # || self.cats_created.include?(cat)
        end 
end
 