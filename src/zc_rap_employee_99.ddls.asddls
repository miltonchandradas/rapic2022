@EndUserText.label: 'Consumption view for EMPLOYEE'
@AccessControl.authorizationCheck: #NOT_REQUIRED

@Search.searchable: true
@Metadata.allowExtensions: true

define root view entity ZC_RAP_EMPLOYEE_99
  provider contract transactional_query
  as projection on ZI_RAP_EMPLOYEE_99 as Employee
{
  key Id,

      @Search.defaultSearchElement: true
      @EndUserText.label: 'First Name'
      Firstname,
      
      @Search.defaultSearchElement: true
      @EndUserText.label: 'Last Name'
      Lastname,
      
      @EndUserText.label: 'Age'
      Age,
      
      @Search.defaultSearchElement: true
      @EndUserText.label: 'Role'
      Role,
      
      @EndUserText.label: 'Salary'
      Salary,
      
      @EndUserText.label: 'Active'
      Active,

      LastChangedAt,
      LocalLastChangedAt,
      
      /* Associations */
      _Project : redirected to composition child ZC_RAP_PROJECT_99
}
