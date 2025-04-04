*&---------------------------------------------------------------------*
*& Report zas_dummy_example_01
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zas_dummy_example_01.


DATA: lv_where_clause TYPE string,
      lv_where_2 TYPE string,
      lv_item_type TYPE string.

SELECT * FROM zvgm_vdd1rphd
INTO TABLE @DATA(lt_vdd1rphd)
WHERE (lv_where_2).

LOOP AT lt_vdd1rphd INTO DATA(lwa_vdd1rphd).
    lwa_vdd1rphd-bunit = 'CS'.
    MODIFY zvgm_vdd1rphd FROM lwa_vdd1rphd.
ENDLOOP.
