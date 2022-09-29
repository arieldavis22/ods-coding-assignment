export class Flight {
  constructor(
    public id: number,
    public created_at: Date,
    public updated_at: Date,
    public flight_identifier: string,
    public flt_num: number,
    public scheduled_origin_gate: string,
    public scheduled_destination_gate: string,
    public out_gmt: Date,
    public in_gmt: Date,
    public off_gmt: Date,
    public on_gmt: Date,
    public destination: string,
    public origin: string,
    public destination_full_name: string,
    public origin_full_name: string
  ) {}
}
