class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :identifier
      t.string :description
      t.decimal :retail_price
      t.decimal :price
      t.string :notes
      t.string :retail_url

      t.timestamps null: false
    end
  end
end
