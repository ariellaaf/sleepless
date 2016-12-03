class Mentor < ApplicationRecord
 has_many :sessions, :topics
end
