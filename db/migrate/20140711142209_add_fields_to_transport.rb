class AddFieldsToTransport < ActiveRecord::Migration
  def change
    add_column :transports, :run_date, :date
    add_column :transports, :start_time, :time
  end
end
