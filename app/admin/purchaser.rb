ActiveAdmin.register Purchaser do

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

show title: :name do

  panel "Items" do
    table_for purchaser.items do |t|
      t.column("Identifier") { |item| item.identifier }
      t.column("Description") { |item| item.description }
      t.column("Price") { |item| number_to_currency item.price }
    end
  end

  panel "Total" do
    attributes_table_for purchaser do
      row("Cash/Check") { number_to_currency purchaser.items.sum(:price) }
      row("Credit Card (Add 3%)") { number_to_currency(purchaser.items.sum(:price) * 1.03) }
    end
  end
end


end
