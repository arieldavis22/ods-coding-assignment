## Tech Stack

Backend: Ruby on Rails (host: localhost:3000 by default)
Frontend: Angular 14 (host: localhost:4200 by default)

## RESTful Endpoints

'/flights'
'/flight-names'

## Flight Model

> **id** - integer
> **created_at** - datetime
> **updated_at** - datetime
> **flight_identifier** - string
> **flt_num** - integer
> **scheduled_origin_gate** - string
> **scheduled_destination_gate** - string
> **out_gmt** - datetime
> **in_gmt** - datetime
> **off_gmt** - datetime
> **on_gmt** - datetime
> **destination** - string
> **origin** - string
> **destination_full_name** - string
> **origin_full_name** - string

## User Stories

- User able to search for destination of flights based on 'destination' 'origin' 'destination_full_name' 'origin_full_name'
- Search should auto-suggest station (destination/origin) based on both short ('destination'/'origin') and full ('destination_full_name'/'origin_full_name') name
- Search should dynamically render table rows based on current search value

## Component Setup:

- Root
- Header
- Flight Table

## Color Scheme:

--primary-blue: #0b1f66
--primary-red: #e51937

Flight data location: **flightselector-backend/lib/seeds/flight.cvs**

---

# ODS Full Stack Coding Assignment

## Assignment

Create a web application that allows a user to search for flights and display the results in a tabular view.

## Features

1. Allow the user to enter a station (destination or origin) to search flights. Display the results in a table.

2. Provide an auto-suggest feature for station. A user should be able to see flights based on station code or location name. For example,
   for Nashville (BNA), a user should be able to select flights to/from Nashville by entering the keywords BNA or Nashville.

3. Provide two RESTful endpoints supporting the functionality listed in steps 1 and 2.

## Bonus Points (Not required)

1. Unit tests are created for your code and test the main logic you've put together, e.g. auto-suggest returns BNA when Nashville is the search term.

## Datasource

A zipped CSV file of flights is available in /data/flights.csv. Each row in the CSV file represents a flight.

## Implementation

**Preferred tech stack:**

- Backend: Python, node.js, SpringBoot, etc.
- Angular or other frontend framework (ReactJS, vue.js, etc.)
- Docker (If you'd like to host it, try hosting it on Firebase, Netlify since there's a free tier with a small db setup)

However, you may use other tech if you are more comfortable with something else. You can use any additional technologies/frameworks/DBs/libraries you would like to.

**To submit your solution:**

- Clone this repo and push to a personal github repo and submit the link
- Please update the README
- Return your solution within 3 business days, unless other directions provided.
- Feel free to ask questions at any time.
- Have fun with it! Your application can be as simple or complex as possible.
