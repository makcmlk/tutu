class AddTicketsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :tickets do |t|
      t.belongs_to :train, index: true
      t.belongs_to :user, index: true
      t.integer :number
      t.timestamps
    end
  end
end
