class Note < ApplicationRecord
    belongs_to :user
    belongs_to :cat 

    validates :content, presence: true 
end
