class AddCategoryToTenders < ActiveRecord::Migration[6.0]
  def change
    add_column :tenders, :category, :string
  end
end
