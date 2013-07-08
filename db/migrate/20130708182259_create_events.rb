class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :city
      t.date :date
      t.time :start_time
      t.time :end_time
      t.text :description
      t.integer :price
      t.string :venue
      t.string :name

      t.timestamps
    end
  end
end
