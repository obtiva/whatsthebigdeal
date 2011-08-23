class CreateDeals < ActiveRecord::Migration
  def self.up
    create_table :deals do |t|
      t.string :name
      t.text :description
      t.references :merchant
      t.date :start_date
      t.date :end_date
      t.float :deal_price
      t.float :normal_price

      t.timestamps
    end
  end

  def self.down
    drop_table :deals
  end
end
