class CreateTutorials < ActiveRecord::Migration[8.0]
  def change
    create_table :tutorials do |t|
      t.string :title
      t.text :description
      t.string :video_url
      t.decimal :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
