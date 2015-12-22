ActiveAdmin.register Item do
  permit_params :identifier, :description, :notes, :retail_price, :price, :retail_url, :purchaser_id, { images: [] }

  config.per_page = 100

  config.sort_order = "identifier_asc"

  controller do
    def find_resource
      scoped_collection.where(identifier: params[:id]).first!
    end
  end

  form do |f|
    f.inputs do
      f.input :identifier
      f.input :description
      f.input :notes
      f.input :price
      f.input :retail_price
      f.input :retail_url
      f.input :purchaser
    end

    f.inputs do
      f.file_field :images, multiple: true
    end

    f.actions
  end

  index do
    selectable_column
    column :identifier
    column :description
    column :retail_price
    column :price
    column :notes
    column :retail_url
    column :category
    column :purchaser
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
