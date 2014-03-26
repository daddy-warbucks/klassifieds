class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :price
      t.text :content
      t.text :title
      t.integer :user_id
      t.integer :category_id
      t.integer :subcategory_id
      t.timestamps
    end
    add_index :items, [:user_id, :created_at]
  end
end
