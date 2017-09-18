class CreateVotes < ActiveRecord::Migration[5.1]
  def self.up
    create_table :votes do |t|
      t.integer :constituency_id
      t.integer :candidate_id
      t.integer :total_votes
      t.timestamps null: false
    end
  end

  def self.down
    drop_table :votes
  end
end
