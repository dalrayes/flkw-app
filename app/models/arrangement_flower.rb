class ArrangementFlower < ActiveRecord::Base
  belongs_to :flower
  belongs_to :arrangement

  accepts_nested_attributes_for :flower, allow_destroy: true

end