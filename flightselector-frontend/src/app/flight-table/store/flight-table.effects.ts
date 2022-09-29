import { Store } from '@ngrx/store';
import { Injectable } from '@angular/core';
import { Actions, createEffect, ofType } from '@ngrx/effects';
import * as FlightTableActions from './flight-table.actions';
import { HttpClient } from '@angular/common/http';
import { map, switchMap, withLatestFrom } from 'rxjs/operators';
import * as fromApp from '../../store/app.reducer';

@Injectable({
  providedIn: 'root',
})
export class FlightTableEffects {
  constructor(
    private actions$: Actions,
    private http: HttpClient,
    private store: Store<fromApp.AppState>
  ) {}

  fetchFlights$ = createEffect(() =>
    this.actions$.pipe(
      ofType(FlightTableActions.fetchFlights),
      withLatestFrom(this.store.select('flightTable')),
      switchMap(([actionData, flightState]) => {
        return this.http.get<any>(
          `http://localhost:3000/flights?query=${flightState.searchTerm}`
        );
      }),
      map((flights) => {
        return FlightTableActions.setFlights({ flights });
      })
    )
  );

  fetchFlightNames$ = createEffect(() =>
    this.actions$.pipe(
      ofType(FlightTableActions.fetchFlightNames),
      withLatestFrom(this.store.select('flightTable')),
      switchMap(([actionData, flightState]) => {
        return this.http.get<any>(
          `http://localhost:3000/flight-names?query=${flightState.searchTerm}`
        );
      }),
      map((flights) => {
        return FlightTableActions.setFlightNames({ flightNames: flights });
      })
    )
  );
}
