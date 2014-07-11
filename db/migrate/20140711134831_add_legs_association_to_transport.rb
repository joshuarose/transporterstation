class AddLegsAssociationToTransport < ActiveRecord::Migration
  def self.up
    add_column :legs, :transport_id, :integer
    add_index 'legs', ['transport_id'], name: 'index_legs_transport_id'
  end

  def self.down
    remove_column :legs, :transport_id
  end
end
