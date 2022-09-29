import { Flight } from './../flight-model';
import { Action, createReducer, on } from '@ngrx/store';
import * as FlightActions from './flight-table.actions';

export interface State {
  flights: Flight[];
  flightNames: string[];
  searchTerm: string;
  isLoading: boolean;
}

const initialState: State = {
  flights: [],
  flightNames: [],
  searchTerm: null,
  isLoading: false,
};

export const _flightReducer = createReducer(
  initialState,
  on(FlightActions.setFlights, (state, action) => {
    return {
      ...state,
      flights: [...action.flights],
      isLoading: false,
    };
  }),
  on(FlightActions.fetchFlights, (state, action) => {
    return {
      ...state,
      searchTerm: action.searchTerm,
      isLoading: true,
    };
  }),
  on(FlightActions.setFlightNames, (state, action) => {
    return {
      ...state,
      flightNames: [...action.flightNames],
    };
  }),
  on(FlightActions.fetchFlightNames, (state, action) => {
    return {
      ...state,
      searchTerm: action.searchTerm,
    };
  })
);

export function flightReducer(state: State, action: Action) {
  return _flightReducer(state, action);
}
