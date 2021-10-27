module Blorgh
  class Comment < ApplicationRecord
    belongs_to :user
  end
end
