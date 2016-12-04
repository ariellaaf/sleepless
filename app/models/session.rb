class Session < ApplicationRecord
 belongs_to :mentor 
 has_many :topics
 
 
 def self.search(search)
  where("name LIKE ?", "%{search}%")
  where("content LIKE ?", "%{search}%")
 end
 
end
