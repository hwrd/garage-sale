class AddImagesToItems < ActiveRecord::Migration
  def change
    add_column :items, :images, :json
  end
end
