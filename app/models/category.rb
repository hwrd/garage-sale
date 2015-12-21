class Category < ActiveRecord::Base
  validates :name, presence: true

  has_many :items

  after_create :generate_slug

  def generate_slug
    self.slug = to_param
    self.save
  end

  def to_param
    "#{id}-#{name.parameterize}"
  end
end

# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  slug       :string
#
