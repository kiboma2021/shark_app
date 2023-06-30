class Shark < ApplicationRecord
    has_many :posts, dependent: :destroy
    has_many :comments, dependent: :destroy
    validates :name, presence:true, uniqueness:true
    validates :description, presence:true
end
