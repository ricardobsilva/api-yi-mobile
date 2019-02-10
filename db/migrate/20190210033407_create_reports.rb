class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.integer :user_id
      t.integer :comment_id

      t.timestamps
    end
    add_index :reports, :user_id
    add_index :reports, :comment_id
  end
end
