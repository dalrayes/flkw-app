class Flower < ActiveRecord::Base
  has_many :arrangement_flowers
  has_many :arrangements, through: :arrangement_flowers

  validates :type, presence: true, uniqueness: true
end