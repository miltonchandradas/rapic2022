@EndUserText.label: 'Consumption view for PROJECT'
@AccessControl.authorizationCheck: #NOT_REQUIRED

@Search.searchable: true
@Metadata.allowExtensions: true

define view entity ZC_RAP_PROJECT_99
  as projection on ZI_RAP_PROJECT_99 as Project
{
  key Id,
      @EndUserText.label: 'Employee Id'
      EmployeeId,

      @Search.defaultSearchElement: true
      @EndUserText.label: 'Project Name'
      Name,
      
      @EndUserText.label: 'Project Description'
      Description,
      
      LastChangedAt,
      LocalLastChangedAt,
      
      /* Associations */
      _Employee : redirected to parent ZC_RAP_EMPLOYEE_99
}
