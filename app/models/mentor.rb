class Mentor < ApplicationRecord
 has_many :sessions
 has_many :topics
end
