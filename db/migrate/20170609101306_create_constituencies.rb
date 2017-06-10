class CreateConstituencies < ActiveRecord::Migration[5.1]
  def self.up
    create_table :constituencies do |t|
      t.string :name
      t.integer :population
      t.timestamps null: false
    end
  end

  def self.down
    drop_table :constituencies
  end
end
