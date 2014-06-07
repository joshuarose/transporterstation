class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :image
      t.string :weight
      t.boolean :isolate

      t.timestamps
    end
  end
end
