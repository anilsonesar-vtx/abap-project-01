CLASS zcl_amdp_class DEFINITION
  PUBLIC

  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_amdp_marker_hdb .

    TYPES:
      t_vd0ain TYPE TABLE OF /vgm/vd0ain .

    CLASS-METHODS recordings_return
      IMPORTING
        VALUE(i_data_fetch) TYPE boolean
      EXPORTING
        VALUE(et_data)      TYPE t_vd0ain.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_amdp_class IMPLEMENTATION.
  METHOD recordings_return
  BY DATABASE PROCEDURE FOR HDB LANGUAGE SQLSCRIPT OPTIONS READ-ONLY USING
  /vgm/vd0arphd /vgm/vd0ain /VGM/VD0ADS.

    DECLARE lv_mandt NVARCHAR(3) DEFAULT '';
    DECLARE lv_count INTEGER DEFAULT 0;

    SELECT SESSION_CONTEXT('CLIENT') INTO lv_mandt FROM dummy;

    et_data =  SELECT HD.MANDT as MANDT ,
                      HD.MTRNR as MTRNR ,
                      HD.MTRCT as MTRCT ,
                      HD.EXTID as EXTID ,
                      HD.MTRTP as MTRTP ,
                      HD.MTSTS as MTSTS ,
                      DS.DESCR as DESCR ,
                      MIN.TMPMT as TMPMT ,
                      MIN.MSKVL as MSKVL
                               FROM "/VGM/VD0ARPHD" AS HD
                         INNER JOIN "/VGM/VD0AIN" AS MIN ON ( HD.MTRNR = MIN.MTRNR )
                         INNER JOIN "/VGM/VD0ADS" AS DS ON ( HD.MTRNR = DS.MTRNR )
                   WHERE HD.MANDT = :LV_MANDT
                     AND HD.MTRNR = DS.MTRNR;

  ENDMETHOD.
ENDCLASS.
