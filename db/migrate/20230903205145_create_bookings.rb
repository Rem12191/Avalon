class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.date :travel_date
      t.text :message

      t.timestamps
    end
  end
end
