class Announcement < ActiveRecord::Base
  belongs_to :category

  scope :global, -> { where(category: nil) }
end

# == Schema Information
#
# Table name: announcements
#
#  id          :integer          not null, primary key
#  message     :text
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_announcements_on_category_id  (category_id)
#
