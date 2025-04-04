*&---------------------------------------------------------------------*
*& Report zas_dummy_example_01
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zas_dummy_example_01.


DATA: lv_where_clause TYPE string,
      lv_item_type TYPE string.

SELECT * FROM zvgm_vdd1rphd
INTO TABLE @DATA(lt_vdd1rphd)
WHERE (lv_where_clause).

LOOP AT lt_vdd1rphd INTO DATA(ls_vdd1rphd).
    ls_vdd1rphd-bunit = 'EA'.
    MODIFY zvgm_vdd1rphd FROM ls_vdd1rphd.
ENDLOOP.
