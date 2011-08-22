class CreateMerchants < ActiveRecord::Migration
  def self.up
    create_table :merchants do |t|
      t.string :name
      t.text :description
      t.string :city
      t.string :state
      t.string :zip_code

      t.timestamps
    end
  end

  def self.down
    drop_table :merchants
  end
end
