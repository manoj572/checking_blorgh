class Article < ApplicationRecord
    belongs_to :create
    validates :title, presence: true
    validates :description, presence: true
    
end
