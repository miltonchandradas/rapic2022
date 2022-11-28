CLASS zcl_populate_demo_data_99 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_POPULATE_DEMO_DATA_99 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DELETE FROM zrap_employee_99.
    DELETE FROM zrap_project_99.

    DATA: wa_employee TYPE zrap_employee_99.
    DATA: it_employee_data TYPE STANDARD TABLE OF zrap_employee_99.

    DATA: wa_project TYPE zrap_project_99.
    DATA: it_project_data TYPE STANDARD TABLE OF zrap_project_99.

    wa_employee-id = NEW cl_system_uuid( )->if_system_uuid~create_uuid_x16( ).
    wa_employee-firstname = 'John'.
    wa_employee-lastname = 'Mabry'.
    wa_employee-salary = 7000.
    wa_employee-age = 40.
    wa_employee-role = 'UX Developer'.
    wa_employee-active = abap_true.
    APPEND wa_employee TO it_employee_data.


    wa_project-id = NEW cl_system_uuid( )->if_system_uuid~create_uuid_x16( ).
    wa_project-employee_id = wa_employee-id.
    wa_project-name = 'SAP Machine Learning'.
    wa_project-description = 'SAP Machine Learning'.
    APPEND wa_project TO it_project_data.

    wa_project-id = NEW cl_system_uuid( )->if_system_uuid~create_uuid_x16( ).
    wa_project-employee_id = wa_employee-id.
    wa_project-name = 'SAP Analytics Cloud'.
    wa_project-description = 'SAP Analytics Cloud'.
    APPEND wa_project TO it_project_data.

    wa_employee-id = NEW cl_system_uuid( )->if_system_uuid~create_uuid_x16( ).
    wa_employee-firstname = 'Jane'.
    wa_employee-lastname = 'Doe'.
    wa_employee-salary = 9000.
    wa_employee-age = 35.
    wa_employee-role = 'UX Architect'.
    wa_employee-active = abap_true.
    APPEND wa_employee TO it_employee_data.


    wa_project-id = NEW cl_system_uuid( )->if_system_uuid~create_uuid_x16( ).
    wa_project-employee_id = wa_employee-id.
    wa_project-name = 'SAP S4HANA'.
    wa_project-description = 'SAP S4HANA'.
    APPEND wa_project TO it_project_data.

    wa_project-id = NEW cl_system_uuid( )->if_system_uuid~create_uuid_x16( ).
    wa_project-employee_id = wa_employee-id.
    wa_project-name = 'SAP Cloud Application Programming Model'.
    wa_project-description = 'SAP Cloud Application Programming Model'.
    APPEND wa_project TO it_project_data.

    INSERT zrap_employee_99 FROM TABLE @it_employee_data.
    INSERT zrap_project_99 FROM TABLE @it_project_data.

* Commit.
    COMMIT WORK.

    out->write( 'EMPLOYEE and PROJECT demo data inserted...' ).


  ENDMETHOD.
ENDCLASS.
