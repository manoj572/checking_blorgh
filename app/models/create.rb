class Create < ApplicationRecord
    has_many :articles
    validates :username, :password, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
end
