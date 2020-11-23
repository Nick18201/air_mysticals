class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.date :beginning_date
      t.date :ending_date
      t.integer :total_price
      t.string :status
      t.references :animal, foreign_key: true
      t.references :renter, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
