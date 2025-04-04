*&---------------------------------------------------------------------*
*& Report zas_pr_01
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zas_pr_01.

DATA: lv_var TYPE i.

*Get all data from /NGV/TBMTRT
SELECT * FROM /ngv/tbmtrt INTO TABLE @DATA(lt_tbmtrt).

SELECT * FROM zvgm_vdd1rphd
CLIENT SPECIFIED
WHERE mandt = '025'
INTO TABLE @DATA(lt_vdd1rphd).
