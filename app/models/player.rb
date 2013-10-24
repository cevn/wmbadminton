class Player < ActiveRecord::Base
  before_save { self.email = email.downcase }


  self.per_page = 10

  validates :name, presence: true, length: { maximum: 30 }

  validates :signature, presence: true
  validates :address_street, presence: true
  validates :phone, presence: true
  validates :address_city_state, presence: true
  validates :address_zip, presence: true
  validates :fees, presence: true
  validates :skill, presence: true
  validates :gender, presence: true

  # Required to make boolean presence validation
  validates_inclusion_of :md, :in => [true, false]
  validates_inclusion_of :wd, :in => [true, false]
  validates_inclusion_of :xd, :in => [true, false]


  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
end
