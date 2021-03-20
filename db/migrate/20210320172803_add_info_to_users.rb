class AddInfoToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :brand, :boolean, default:false
    add_column :users, :bar, :boolean, default:false
    add_column :users, :about, :text
  end
end
