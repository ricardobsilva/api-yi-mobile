class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.string :lat
      t.string :long

      t.timestamps
    end
  end
end
