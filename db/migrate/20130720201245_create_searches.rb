class CreateSearches < ActiveRecord::Migration
  def self.up
    create_table :searches do |t|
      t.string :comedian
      t.date :date
      t.string :city
      t.integer :min_price
      t.integer :max_price
      t.timestamps
    end
  end

  def self.down
    drop_table :searches
  end
end
