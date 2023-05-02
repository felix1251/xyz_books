class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :isbn_13, index: true, null: false
      t.string :isbn_10, index: true, null: false
      t.string :publication_year
      t.string :edition, default: ""
      t.decimal :price, precision: 10, scale: 2, null: false

      t.timestamps
    end
  end
end
