class AddDogsAssociationToTransport < ActiveRecord::Migration
  def self.up
    add_column :dogs, :transport_id, :integer
    add_index 'dogs', ['transport_id'], name: 'index_dogs_transport_id'
  end

  def self.down
    remove_column :dogs, :transport_id
  end
end
