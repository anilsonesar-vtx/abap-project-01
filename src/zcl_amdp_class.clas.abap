CLASS zcl_amdp_class DEFINITION
  PUBLIC

  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_amdp_marker_hdb .

    TYPES:
      t_vd0arphd TYPE TABLE OF /vgm/vd0arphd .

    CLASS-METHODS recordings_return
      IMPORTING
        VALUE(i_data_fetch) TYPE boolean
      EXPORTING
        VALUE(et_data)      TYPE t_vd0arphd.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_amdp_class IMPLEMENTATION.
  METHOD recordings_return
  BY DATABASE PROCEDURE FOR HDB LANGUAGE SQLSCRIPT OPTIONS READ-ONLY USING
  /vgm/vd0arphd.

    DECLARE lv_mandt NVARCHAR(3) DEFAULT '';
    DECLARE lv_count INTEGER DEFAULT 0;

    SELECT SESSION_CONTEXT('CLIENT') INTO lv_mandt FROM dummy;

    et_data =  SELECT *
                         FROM "/VGM/VD0ARPHD" AS RP
                   WHERE RP.MANDT = :LV_MANDT;

  ENDMETHOD.
ENDCLASS.
