class AddTotalVotesToCandidate < ActiveRecord::Migration[5.1]
  def self.up
    change_table :candidates do |t|
      t.integer :total_votes
    end
  end

  def self.down
    change_table :candidates do |t|
      t.remove :total_votes
    end
  end
end
