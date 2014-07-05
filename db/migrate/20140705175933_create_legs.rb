class CreateLegs < ActiveRecord::Migration
  def change
    create_table :legs do |t|
      t.string :description
      t.string :address
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps
    end
  end
end
