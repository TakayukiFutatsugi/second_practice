class CreateChats < ActiveRecord::Migration[6.1]
  def change
    create_table :chats do |t|
      t.references :corporation, foreign_key: true, null: false
      t.references :candidate, foreign_key: true, null: false
      t.timestamps
    end
  end
end
