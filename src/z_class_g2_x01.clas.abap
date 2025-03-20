CLASS z_class_g2_x01 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS z_class_g2_x01 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  out->write( 'Hello World!' ).
  ENDMETHOD.
ENDCLASS.
