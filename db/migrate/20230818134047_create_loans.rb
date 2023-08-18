class CreateLoans < ActiveRecord::Migration[6.0]
  def change
    create_table :loans do |t|
      t.integer :user_id
      t.integer :book_id
      t.date :due

      t.timestamps
    end
  end
end
