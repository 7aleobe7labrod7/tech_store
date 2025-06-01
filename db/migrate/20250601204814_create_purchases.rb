class CreatePurchases < ActiveRecord::Migration[8.0]
  def change
    create_table :purchases do |t|
      t.references :user, null: false, foreign_key: true
      t.references :purchasable, polymorphic: true, null: false
      t.decimal :price

      t.timestamps
    end
  end
end
