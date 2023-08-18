class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :cover_art
      t.text :blurb

      t.timestamps
    end
  end
end
