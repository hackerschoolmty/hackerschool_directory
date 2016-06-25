class Hacker < ActiveRecord::Base
  belongs_to :generation
  has_many :languages

	accepts_nested_attributes_for :languages
end
