ActiveAdmin.register Item do
  config.per_page = 100

  index do
    selectable_column
    column :identifier
    column :description
    column :retail_price
    column :price
    column :notes
    column :retail_url
    column :category
    actions
  end

  collection_action :upload do

  end

  collection_action :import_csv, method: :post do
    import = ImportItemCSV.new(file: params[:csv_file])
    import.run!
    redirect_to collection_path, notice: import.report.message
  end

  action_item only: :index do
    link_to 'Upload CSV', upload_admin_items_path
  end
end
