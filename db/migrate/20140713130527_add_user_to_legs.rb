class AddUserToLegs < ActiveRecord::Migration
  def self.up
    add_column :legs, :user_id, :integer
    add_index 'legs', ['user_id'], name: 'index_legs_user_id'
  end

  def self.down
    remove_column :legs, :user_id
  end
end
