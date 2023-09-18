class CreateGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :groups do |t|
      t.string  :group_name,           null: false
      t.text    :introduction,         null: false
      t.integer :owner_id,             null: false

      t.timestamps
    end
  end
end
