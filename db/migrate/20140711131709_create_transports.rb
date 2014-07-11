class CreateTransports < ActiveRecord::Migration
  def change
    create_table :transports do |t|

      t.timestamps
    end
  end
end
