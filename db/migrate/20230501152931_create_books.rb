class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :isbn_13, index: true
      t.string :isbn_10, index: true
      t.string :publication_year
      t.string :edition
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
