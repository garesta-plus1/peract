class CreateGroupMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :group_messages do |t|
      t.integer :post_id
      t.integer :user_id
      t.text :content

      t.timestamps
    end
  end
end
