class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :name
      t.text :description
      t.string :link
      t.string :image
      t.integer :rating
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
