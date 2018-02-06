class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :title
      t.text :detail
      t.string :category
      t.string :image_1
      t.string :image_2
      t.string :image_3
      t.boolean :published
      t.integer :status
      t.integer :num_of_planner
      t.integer :num_of_engineer
      t.integer :num_of_designer
      t.integer :motivation
      t.integer :period
      t.integer :scale
      t.string :main_color

      t.timestamps
    end
  end
end
