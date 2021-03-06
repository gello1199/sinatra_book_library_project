class User < ActiveRecord::Base
    has_many :books
    validates :username, :password, presence: true
    validates :username, uniqueness: true
    has_secure_password
end