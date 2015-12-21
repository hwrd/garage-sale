class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :identifier
      t.string :description
      t.decimal :retail_price, precision: 6, scale: 2
      t.decimal :price, precision: 6, scale: 2
      t.text :notes
      t.string :retail_url

      t.timestamps null: false
    end
  end
end
