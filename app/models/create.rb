class Create < ApplicationRecord
    has_many :articles
    validates :username, :password, presence: true
    validates :email, presence: true
end
