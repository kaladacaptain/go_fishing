class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.datetime :date
      t.string :charter_type

      t.timestamps
    end
  end
end
