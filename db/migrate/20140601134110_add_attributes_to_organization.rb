class AddAttributesToOrganization < ActiveRecord::Migration
  def change
    add_column :organizations, :address, :string
    add_column :organizations, :phone, :string
    add_column :organizations, :website, :string
    add_column :organizations, :contact_name, :string
  end
end
