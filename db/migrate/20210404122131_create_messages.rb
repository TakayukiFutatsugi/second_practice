class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.references :chat, foreign_key: true, null: false
      t.text :message
      t.timestamps
    end
  end
end
