class AddLatitudeAndLongitudeToLegs < ActiveRecord::Migration
  def change
    add_column :legs, :latitude, :float
    add_column :legs, :longitude, :float
  end
end
