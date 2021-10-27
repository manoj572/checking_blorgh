module Blorgh
  class User < ApplicationRecord
    has_many :comments
  end
end
