import { ActionReducerMap } from '@ngrx/store';
import * as fromFlightTable from '../flight-table/store/flight-table.reducer';

export interface AppState {
  flightTable: fromFlightTable.State;
}

export const appReducer: ActionReducerMap<AppState> = {
  flightTable: fromFlightTable._flightReducer,
};
