class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.date :check_in
      t.date :check_out
      t.integer :group
      t.integer :days
      t.integer :total_pay

      t.timestamps
    end
  end
end
