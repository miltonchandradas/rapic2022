CLASS zcl_hello_world_9999 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_HELLO_WORLD_9999 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    out->write( 'Hello world...' ).
    out->write( |Logged in User:{ cl_abap_context_info=>get_user_technical_name( ) }| ).
    out->write( |Logged in User:{ cl_abap_context_info=>get_user_formatted_name( ) }| ).
    out->write( |Logged in Date:{ cl_abap_context_info=>get_system_date( ) }| ).
    out->write( |Logged in Time:{ cl_abap_context_info=>get_system_time( ) }| ).

  ENDMETHOD.
ENDCLASS.
