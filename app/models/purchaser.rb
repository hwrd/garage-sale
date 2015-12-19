class Purchaser < ActiveRecord::Base
  validates :name, presence: true

  has_many :items
end

# == Schema Information
#
# Table name: purchasers
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
