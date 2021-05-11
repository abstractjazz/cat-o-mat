class Note < ApplicationRecord
    belongs_to :user
<<<<<<< HEAD
    belongs_to :cat 

    validates :content, presence: true 
=======
    belongs_to :cat

    validates :content, presence: { message: "must include a kitteh image. press the new button for a kitteh pic."}
>>>>>>> rework_associations
end
