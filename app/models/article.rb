class Article < ApplicationRecord
    belongs_to :user
    belongs_to :category
    has_many :comments, dependent: :destroy
    has_rich_text :content

    validates :title, :content , presence: true
end
