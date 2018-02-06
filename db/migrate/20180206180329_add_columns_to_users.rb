class AddColumnsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :uid, :string
    add_column :users, :provider, :string
    add_column :users, :token, :string
    add_column :users, :name, :string, null: false
    add_column :users, :image, :string
    add_column :users, :role, :integer, null: false
    add_column :users, :college, :string, null: false
    add_column :users, :major, :string, null: false
    add_column :users, :graduation_year, :integer, null: false
    add_column :users, :introduction, :text
    add_column :users, :url_1, :string
    add_column :users, :url_2, :string
    add_column :users, :url_3, :string
  end
end
