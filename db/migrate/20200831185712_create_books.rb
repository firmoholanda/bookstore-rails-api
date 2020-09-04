class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :description
      t.string :category
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
