require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: items
#
#  id           :integer          not null, primary key
#  identifier   :string
#  description  :string
#  retail_price :decimal(6, 2)
#  price        :decimal(6, 2)
#  notes        :text
#  retail_url   :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  category_id  :integer
#  purchaser_id :integer
#  images       :json
#
