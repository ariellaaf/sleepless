class Session < ApplicationRecord
 belongs_to :mentor 
 has_many :topics
end
