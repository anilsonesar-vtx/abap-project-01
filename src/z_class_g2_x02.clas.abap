CLASS z_class_g2_x02 DEFINITION
  PUBLIC

  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    CLASS-DATA: ms_variable_01 TYPE string.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS Z_CLASS_G2_X02 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  FIELD-SYMBOLS: <lt_data> TYPE ANY TABLE,
                 <lv_var>  TYPE any.

  out->write( 'Hello World from Z_CLASS_X02' ).

  out->write( 'Hello World from Z_CLASS_X02 - Another Change' ).
  out->write( 'Hello World from Z_CLASS_X02 - Another Change2' ).

  out->write( 'Hello World from Z_CLASS_X02 - Third Change' ).

    SELECT *
    FROM /vgm/vd0arphd
    INTO TABLE @DATA(lt_material_data)
    WHERE mtrct EQ 'RP'.

    LOOP AT <lt_data> ASSIGNING FIELD-SYMBOL(<lwa_data>).
    ENDLOOP.

    <lv_var> = 1.

    ms_variable_01 = 'Hello World'.

  ENDMETHOD.
ENDCLASS.
