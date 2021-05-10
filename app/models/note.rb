class Note < ApplicationRecord
    belongs_to :user
    belongs_to :cat
    # belongs_to :commented_cat, class_name: "Cat", foreign_key: "comment_id"
    validates :content, presence: true 
end
