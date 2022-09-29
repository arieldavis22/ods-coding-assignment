require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'flights.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
    f = Flight.new
    f.id = row['id']
    f.created_at = row['created_at']
    f.updated_at = row['updated_at']
    f.flight_identifier = row['flight_identifier']
    f.flt_num = row['flt_num']
    f.scheduled_origin_gate = row['scheduled_origin_gate']
    f.scheduled_destination_gate = row['scheduled_destination_gate']
    f.out_gmt = row['out_gmt']
    f.in_gmt = row['in_gmt']
    f.off_gmt = row['off_gmt']
    f.on_gmt = row['on_gmt']
    f.destination = row['destination']
    f.origin = row['origin']
    f.destination_full_name = row['destination_full_name']
    f.origin_full_name = row['origin_full_name']
    f.save
    puts "Flight #{f.flt_num} saved"
  end
  
  puts "There are now #{Flight.count} rows in the transactions table"