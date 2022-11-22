class CreateJukeboxes < ActiveRecord::Migration[7.0]
  def change
    create_table :jukeboxes do |t|
      t.text :content
      t.string :title
      t.string :image
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
