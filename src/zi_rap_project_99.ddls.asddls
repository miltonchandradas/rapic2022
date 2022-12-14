@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface view for PROJECT'
define view entity ZI_RAP_PROJECT_99
  as select from zrap_project_99 as Project
  association to parent ZI_RAP_EMPLOYEE_99 as _Employee on $projection.EmployeeId = _Employee.Id
{
  key id                    as Id,
      employee_id           as EmployeeId,
      name                  as Name,
      description           as Description,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at       as LastChangedAt,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,

      /* associations */
      _Employee
}
