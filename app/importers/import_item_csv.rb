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

  identifier :identifier
end
