class Arrangement < ActiveRecord::Base
  has_many :arrangement_flowers
  has_many :flowers, through: :arrangement_flowers

  validates :availability, inclusion: {in: %w(available not_available)}
  validates :visibility, inclusion: {in: %w(visible not_visible)}
  validates :container_type, inclusion: {in: %w(vase box)}
  validates :name, :item_number, :price, :availability, :width, :height, :description, :visibility, :container_type, presence: true
  accepts_nested_attributes_for :arrangement_flowers

  has_attached_file :image, styles: {medium: ["100x100>", :jpg]}
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/gif", "image/png"]

  def available?
    availability == 'available'
  end

  def visible?
    visibility == 'visible'
  end
end