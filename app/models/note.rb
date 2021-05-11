class Note < ApplicationRecord
    belongs_to :user
<<<<<<< HEAD
<<<<<<< HEAD
    belongs_to :cat 

    validates :content, presence: true 
=======
    belongs_to :cat

    validates :content, presence: { message: "must include a kitteh image. press the new button for a kitteh pic."}
>>>>>>> rework_associations
=======
    belongs_to :cat
    validates :content, presence: { message: "must include a kitteh image. press the new button for a kitteh pic."}
>>>>>>> 5a8d302057026b5d60c0303e6e3befc97133f6a9
end
