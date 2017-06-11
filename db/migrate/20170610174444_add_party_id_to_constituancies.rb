class AddPartyIdToConstituancies < ActiveRecord::Migration[5.1]
  def change
    add_column :constituencies, :party_id, :integer
  end

  def self.up
  end

  def self.down
  end
end
