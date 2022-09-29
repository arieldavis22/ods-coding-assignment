import { Component, OnInit } from '@angular/core';
import { Store } from '@ngrx/store';
import { Subscription } from 'rxjs';
import * as fromApp from '../store/app.reducer';
import * as FlightTableActions from './store/flight-table.actions';
import { Flight } from './flight-model';
import { NgForm } from '@angular/forms';

@Component({
  selector: 'app-flight-table',
  templateUrl: './flight-table.component.html',
  styleUrls: ['./flight-table.component.css'],
})
export class FlightTableComponent implements OnInit {
  flights: Flight[];
  allFlights: Flight[];
  typingTimer = null;
  flightNames: string[];
  sliceCount = 1;
  isLoading = false;
  storeSub: Subscription;
  constructor(private store: Store<fromApp.AppState>) {}

  ngOnInit(): void {
    this.storeSub = this.store
      .select('flightTable')
      .subscribe((flightState) => {
        this.allFlights = flightState.flights;
        this.isLoading = flightState.isLoading;
        this.flightNames = flightState.flightNames;
        if (this.allFlights.length > 10)
          this.flights = this.paginate(this.allFlights, 10, 1);
        else this.flights = this.allFlights.slice(0, this.allFlights.length);
      });
  }

  onSearchForFlights(form: NgForm) {
    const searchTerm = form.value.search;

    this.store.dispatch(
      FlightTableActions.fetchFlights({ searchTerm: searchTerm })
    );
  }

  onKeyUp(form: NgForm) {
    if (form.value.search.length > 0) {
      clearTimeout(this.typingTimer);
      const searchTerm = form.value.search;
      this.typingTimer = setTimeout(() => {
        this.store.dispatch(
          FlightTableActions.fetchFlightNames({ searchTerm: searchTerm })
        );
      }, 500);
    }
  }

  onKeyDown() {
    clearTimeout(this.typingTimer);
  }

  handlePrev() {
    this.sliceCount--;
    const temp = this.paginate(this.allFlights, 10, this.sliceCount);
    if (temp.length > 0) this.flights = temp;
    else this.sliceCount++;
  }

  handleNext() {
    this.sliceCount++;
    const temp = this.paginate(this.allFlights, 10, this.sliceCount);
    if (temp.length > 0) this.flights = temp;
    else this.sliceCount--;
  }

  paginate(array, page_size, page_number) {
    return array.slice((page_number - 1) * page_size, page_number * page_size);
  }
}
