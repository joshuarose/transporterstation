class AddOrganizationToTransports < ActiveRecord::Migration
  def self.up
    add_column :transports, :organization_id, :integer
    add_index 'transports', ['organization_id'], name: 'index_tranports_organization_id'
  end

  def self.down
    remove_column :transports, :organization_id
  end
end
