class ImportItemCsv
  include CSVImporter

  model Item

  column :description
  column :retail_price
  column :price
  column :notes
  column :retail_url

  identifier :identifier
end
