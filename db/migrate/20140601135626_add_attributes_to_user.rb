class AddAttributesToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :phone, :string
    add_column :users, :car_description, :string
    add_column :users, :zip_code, :string

    add_column :organizations, :city, :string
    add_column :organizations, :state, :string
    add_column :organizations, :zip_code, :string
  end
end
