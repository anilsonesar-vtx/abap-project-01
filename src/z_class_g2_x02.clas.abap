CLASS z_class_g2_x02 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS Z_CLASS_G2_X02 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  out->write( 'Hello World from Z_CLASS_X02' ).

  out->write( 'Hello World from Z_CLASS_X02 - Another Change' ).
  out->write( 'Hello World from Z_CLASS_X02 - Another Change2' ).

  out->write( 'Hello World from Z_CLASS_X02 - Third Change' ).


  ENDMETHOD.
ENDCLASS.
