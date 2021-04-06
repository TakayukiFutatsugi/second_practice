class CreateScouts < ActiveRecord::Migration[6.1]
  def change
    create_table :scouts do |t|
      t.references :corporation, foreign_key: true, null: false
      t.references :candidate, foreign_key: true, null: false
      t.text :message
      t.timestamps
    end
  end
end
