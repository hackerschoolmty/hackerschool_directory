class Hacker < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  belongs_to :generation
  has_and_belongs_to_many :languages

  before_destroy :verify_if_theres_at_least_one


  def active?
    status == 'active'
  end

  def inactive?
    status != "active"
  end

  private

  def verify_if_theres_at_least_one
    if Hacker.count == 1
      false
    else
      true
    end
  end
end
