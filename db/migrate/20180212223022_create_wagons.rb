class CreateWagons < ActiveRecord::Migration[5.0]
  def change
    create_table :wagons do |t|
      t.string :comfort
      t.integer :bottom_seats
      t.integer :top_seats
      t.belongs_to :train, index: true
      t.timestamps
    end
  end
end
