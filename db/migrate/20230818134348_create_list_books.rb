class CreateListBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :list_books do |t|
      t.integer :list_id
      t.integer :book_id

      t.timestamps
    end
  end
end
