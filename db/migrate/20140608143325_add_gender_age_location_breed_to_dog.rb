class AddGenderAgeLocationBreedToDog < ActiveRecord::Migration
  def change
    add_column :dogs, :gender, :string
    add_column :dogs, :age, :integer
    add_column :dogs, :location, :string
    add_column :dogs, :breed, :string
  end
end
