
FORM document_data_fetch USING lt_data_fetched TYPE ZTT_VGM_VDD1RPHD.

  SELECT * FROM ZVGM_VDD1RPHD
    WHERE mtrct = 'RP'
    INTO TABLE @lt_data_fetched.


ENDFORM.

FORM document_get.

   DATA lt_data TYPE TABLE OF ZVGM_VDD1RPHD.

   PERFORM document_data_fetch USING lt_data.

ENDFORM.
