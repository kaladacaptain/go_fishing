class AddColumnsToReservations < ActiveRecord::Migration[5.0]
  def change
  	add_column :reservations, :group_size, :integer
  	add_column :reservations, :comment, :text
  	add_column :reservations, :first_name, :string
  	add_column :reservations, :last_name, :string
  	add_column :reservations, :phone_number, :integer
  	add_column :reservations, :email, :string
  end
end
