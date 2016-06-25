class Hacker < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :name, presence: true
  belongs_to :generation
  has_and_belongs_to_many :languages

  scope :active, -> { where(status: "active") }
  scope :recently_created, -> { where("created_at < ?", 1.hour.ago)}
  scope :created_before, ->(time){ where("created_at < ?", time)}

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
