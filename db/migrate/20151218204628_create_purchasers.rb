class CreatePurchasers < ActiveRecord::Migration
  def change
    create_table :purchasers do |t|
      t.string :name

      t.timestamps null: false
    end

    change_table :items do |t|
      t.references :purchaser
    end
  end
end
