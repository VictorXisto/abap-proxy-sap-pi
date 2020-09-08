*======================================================================*
*                                                                      *
*                            ABAP DEVELOPER                            *
*                                                                      *
*======================================================================*
* Developer     : VICTOR XISTO                                         *
* Date          : 08/09/2020                                           *
*----------------------------------------------------------------------*
* Report        : ZPROXYPI                                             *
* Finality      : MAIN AND COMPLETE LOGIC TO SEND INFORMATION USING    *
				  ABAP PROXY EASY, WHERE DO YOU USE IT TO IMPLEMENT    *
				  YOUR PROXY ABAP FIRS. PROGRAM TO VIEW INFORMATION    *
				  AND SEND LINES TO SAP WITH ABAP PROXY                *
*======================================================================*

 REPORT ZPROXYPI.

 TABLES: ZTABLATESTPI.
 
*----------------------------------------------------------------------*
* Variables to control the information from the Selection Screen 
*----------------------------------------------------------------------*
 DATA: WA_ZTABLATESTPI LIKE ZTABLATESTPI.
       VAR_PIID        LIKE ZTABLATESTPI.

*----------------------------------------------------------------------*
* INITIAL WINDOW TO FILTER THE ROW THAT IS GOING TO BE SENT
*----------------------------------------------------------------------*
 PARAMETERS PA_PIID LIKE ZTABLATESTPI-ID_EMPLOYEE.

" Call the first subroutine that is JUST INFORMATIVE SECTION and you can eliminate
 PERFORM SELECTINFO.

*----------------------------------------------------------------------*
* CHOOSE INFORMATION NEEDED FROM TABLE AND CALL PROXY:
*  This form is not neccesary, is just to let you reference the ID
*  requested in graphical window in order to filter the information in
*  your query using a variable in a graphic way 
*----------------------------------------------------------------------*
 FORM SELECTINFO.
   " PA_PIID = 1.

" Get the information from the table just to visualize it
   VAR_PIID = PA_PIID.
   SELECT CLIENT ID_EMPLOYEE NOMBRE EDAD TELEFONO 
	 FROM ZTABLATESTPI
     INTO CORRESPONDING FIELDS OF WA_ZTABLATESTPI
     WHERE ID_EMPLOYEE = VAR_PIID.
   ENDSELECT.

" We can see the information that is in the table and should be sent
   write:/ WA_ZTABLATESTPI-ID_EMPLOYEE color col_key,
   WA_ZTABLATESTPI-NOMBRE,
   WA_ZTABLATESTPI-EDAD,
   WA_ZTABLATESTPI-TELEFONO.

" THE IMPORTANCE SUBROUTINE: we call the code that is going to get the information and the will be sent
   PERFORM SENT_INFO_TO_PROXY.
 ENDFORM.
 
*----------------------------------------------------------------------*
* EXECUTE ABAP PROXY AND SEND INFORMATION TO SAP PI:
* This is the important code where you can just add your new table name,
* your new structure names and the is going to get the information from your table
* and after that is going to deliver the information to SAP PI executing the
* ABAP Proxy Method
*----------------------------------------------------------------------*
 FORM SENT_INFO_TO_PROXY.
 
" Error status
   DATA: lv_error(1) TYPE c.

" SAP PI Proxy metadata reference
   DATA :
     IT_ZTEST_PROXY_OUT LIKE TABLE OF ZTABLATESTPI WITH HEADER LINE,
     IT_OUTPUT          TYPE ZMT_TEST,                                       
     IT_PROXY_RESULT    TYPE ZDT_TEST_ROW,                             
     T_PROXY_RESULT     TYPE ZDT_TEST_ROW_TAB.                          

   DATA: CL_PROXY_CLIENT  TYPE REF TO ZCO_SI_OA_TEST.               

" Get the information from your table
   SELECT * 
   FROM ZTABLATESTPI 
   INTO CORRESPONDING FIELDS OF TABLE  IT_ZTEST_PROXY_OUT
   WHERE ID_EMPLOYEE = PA_PIID.

" Upload the information from the table to the internal table in abap side
   LOOP AT IT_ZTEST_PROXY_OUT.
     IT_PROXY_RESULT-ITEM1 = IT_ZTEST_PROXY_OUT-NOMBRE.
     IT_PROXY_RESULT-ITEM2 = IT_ZTEST_PROXY_OUT-EDAD.

     APPEND IT_PROXY_RESULT TO T_PROXY_RESULT.

   ENDLOOP.

" If there is information will be sent to Proxy
   IF T_PROXY_RESULT[] IS INITIAL.
     WRITE 'There is no information'.
   ELSE.
     IT_OUTPUT-MT_TEST-ROW = T_PROXY_RESULT.  
     TRY.
         CREATE OBJECT CL_PROXY_CLIENT.
         CALL METHOD CL_PROXY_CLIENT->SI_OA_TEST  " SERVICE INTERFACE: SI_OA_TEST
           EXPORTING
             OUTPUT = IT_OUTPUT.
         COMMIT WORK.
       CATCH cx_ai_system_fault .
         MESSAGE 'System error' TYPE 'I'.
       CATCH cx_ai_application_fault.
         MESSAGE 'Application error' TYPE 'I'.
     ENDTRY.
   ENDIF.
 COMMIT WORK.

" Status of the information delivered or not delivered
   IF sy-subrc IS INITIAL.
     WRITE: 'Successful'.
   ELSE.
     WRITE: 'NO Successful'.
   ENDIF.
   IF lv_error IS INITIAL.
     MESSAGE i088(ms) WITH 'Information sent succesfully!'.
   ENDIF.
 ENDFORM.