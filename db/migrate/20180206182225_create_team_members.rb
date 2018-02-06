class CreateTeamMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :team_members do |t|
      t.integer :post_id
      t.integer :user_id
      t.integer :role
      t.boolean :accepted
      t.boolean :is_founder

      t.timestamps
    end
  end
end
