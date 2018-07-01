class CreateBookCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :book_categories do |t|
      t.integer :weeks_on_list
      t.integer :position
      t.string :list_name
      t.integer :position_last_week

      t.timestamps
    end
  end
end
