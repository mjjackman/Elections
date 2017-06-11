class CreateCandidates < ActiveRecord::Migration[5.1]
  def self.up
    create_table :candidates do |t|
      t.string :first_name
      t.string :last_name
      t.string :party_id
      t.string :constituency_id
      t.timestamps null: false
    end
  end

  def self.down
    drop_table :candidates
  end
end
