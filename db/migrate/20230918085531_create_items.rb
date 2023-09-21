class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.string :storage
      t.integer :quantity, null: false
      t.text :explanation
      t.references :user,  foreign_key: true
      t.references :group, foreign_key: true

      t.timestamps
    end
  end
end
