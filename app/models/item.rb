class Item < ActiveRecord::Base
  belongs_to :category
  belongs_to :purchaser

  scope :available, -> { where(purchaser: nil) }

  mount_uploaders :images, ImageUploader

  def available?
    purchaser.nil?
  end

  def to_param
    identifier
  end
end

# == Schema Information
#
# Table name: items
#
#  id           :integer          not null, primary key
#  identifier   :string
#  description  :string
#  retail_price :decimal(, )
#  price        :decimal(, )
#  notes        :string
#  retail_url   :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  category_id  :integer
#  purchaser_id :integer
#  images       :json
#
