import { Flight } from './../flight-model';
import { createAction, props } from '@ngrx/store';

export const setFlights = createAction(
  '[Flight] Set Flights',
  props<{
    flights: Flight[];
  }>()
);

export const fetchFlights = createAction(
  '[Flight] Fetch Flights',
  props<{ searchTerm: string }>()
);

export const setFlightNames = createAction(
  '[Flight] Set Flight Names',
  props<{ flightNames: string[] }>()
);

export const fetchFlightNames = createAction(
  '[Flight] Fetch Flight Names',
  props<{ searchTerm: string }>()
);
