class Flower < ActiveRecord::Base
  has_many :arrangement_flowers
  has_many :arrangements, through: :arrangement_flowers

  validates :flower_type, presence: true, uniqueness: true


  def name
  	flower_type
  end
end