ActiveAdmin.register Item do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

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
