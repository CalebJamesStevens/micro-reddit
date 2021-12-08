class User < ApplicationRecord
    has_many :comments
    has_many :posts

    validates :username, presence: true, length: {minimum: 3}, uniqueness: true
    validates :password, presence: true, length: {minimum: 3}
    validates :email, presence: true, uniqueness: true 

end
