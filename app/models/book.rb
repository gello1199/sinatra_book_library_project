class Book < ActiveRecord::Base
    belongs_to :user
    validates :title, :author, :genre, :year_published, presence: true
end