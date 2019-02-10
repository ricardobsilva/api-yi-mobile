class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :text_body
      t.integer :user_id
      t.integer :event_id

      t.timestamps
    end
    add_index :comments, :user_id
    add_index :comments, :event_id
  end
end
