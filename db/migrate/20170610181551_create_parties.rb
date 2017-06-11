class CreateParties < ActiveRecord::Migration[5.1]
  def self.up
    create_table :parties do |t|
      t.string :name
      t.string :leader
      t.string :colour
      t.timestamps null: false
    end
  end

  def self.down
    drop_table :parties
  end
end
