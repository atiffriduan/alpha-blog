class Article < ActiveRecord::Base
	validates :title, presence: true, length: { minimum: 3, maximum: 50 }
	#to put a validation requirement input : must have title with min 3 max 50
	validates :description, presence: true, length: { minimum: 10, maximum: 300 }
	#to put a validation requirement input : must have title with min 10 max 300
end
