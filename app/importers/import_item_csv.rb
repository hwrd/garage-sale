class ImportItemCSV
  include CSVImporter

  model Item

  column :identifier, required: true
  column :description, required: true
  column :retail_price
  column :price, required: true
  column :notes
  column :retail_url
  column :category_id, as: ["category"], to: -> (category, item) { item.category_id = Category.find_or_create_by(name: category).id }
  column :purchaser_id, as: ["purchaser"], to: -> (purchaser, item) { item.purchaser_id = Purchaser.find_or_create_by(name: purchaser).id unless purchaser.blank? }

  identifier :identifier
end
