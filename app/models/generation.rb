class Generation < ActiveRecord::Base
  has_many :hackers
  has_many :courses
end
