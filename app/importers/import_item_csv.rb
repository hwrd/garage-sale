class ImportItemCSV
  include CSVImporter

  model Item

  column :identifier, required: true
  column :description, required: true
  column :retail_price
  column :price, required: true
  column :notes
  column :retail_url

  identifier :identifier
end
