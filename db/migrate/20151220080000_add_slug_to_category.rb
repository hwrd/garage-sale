class AddSlugToCategory < ActiveRecord::Migration
  def up
    add_column :categories, :slug, :string

    Category.reset_column_information

    Category.all.each do |c|
      c.generate_slug
    end
  end

  def down
    remove_column :categories, :slug
  end
end
