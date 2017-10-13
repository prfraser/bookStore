class Book < ApplicationRecord
  belongs_to :author

  has_many :favourites
	has_many :users, :through => :favourites
end
