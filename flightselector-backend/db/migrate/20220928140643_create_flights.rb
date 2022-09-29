class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.string :flight_identifier
      t.integer :flt_num
      t.string :scheduled_origin_gate
      t.string :scheduled_destination_gate
      t.datetime :out_gmt
      t.datetime :in_gmt
      t.datetime :off_gmt
      t.datetime :on_gmt
      t.string :destination
      t.string :origin
      t.string :destination_full_name
      t.string :origin_full_name

      t.timestamps
    end
  end
end
