class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.float :price
      t.date :purchase_date
      t.date :expiration_date
      t.string :serial_id
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
