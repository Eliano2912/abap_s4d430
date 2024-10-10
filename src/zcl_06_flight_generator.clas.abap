CLASS zcl_06_flight_generator DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_06_flight_generator IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  delete from z06_flight.
  out->write( |Deleted: { sy-dbcnt }| ).



  data flight type z06_flight.
  data flights type Table of z06_flight.

  flight-client = sy-mandt.
  flight-airline_id = 'LH'.
  flight-connection_id = '0400'.
  flight-flight_date = '20240127'.
  flight-flight_price = '325.88'.
  flight-currency_code = 'EUR'.
  flight-created_by = sy-uname.
  get TIME STAMP FIELD flight-created_at.
  flight-local_last_changed_by = sy-uname.
  get time stamp field flight-local_last_changed_at.
  get time stamp field flight-last_changed_at.

  append flight to flights.


  flight-client = sy-mandt.
  flight-airline_id = 'LH'.
  flight-connection_id = '0400'.
  flight-flight_date = '20241117'.
  flight-flight_price = '312.96'.
  flight-currency_code = 'EUR'.
  flight-created_by = sy-uname.
  get TIME STAMP FIELD flight-created_at.
  flight-local_last_changed_by = sy-uname.
  get time stamp field flight-local_last_changed_at.
  get time stamp field flight-last_changed_at.

  append flight to flights.


  flight-client = sy-mandt.
  flight-airline_id = 'LH'.
  flight-connection_id = '0029'.
  flight-flight_date = '20241117'.
  flight-flight_price = '325.88'.
  flight-currency_code = 'EUR'.
  flight-created_by = sy-uname.
  get TIME STAMP FIELD flight-created_at.
  flight-local_last_changed_by = sy-uname.
  get time stamp field flight-local_last_changed_at.
  get time stamp field flight-last_changed_at.

  append flight to flights.

  insert z06_flight from table @flights.
  out->write( |Inserted: { sy-dbcnt }| ).


  ENDMETHOD.
ENDCLASS.
