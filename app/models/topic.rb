class Topic < ApplicationRecord
 has_many :mentors, :sessions
end
