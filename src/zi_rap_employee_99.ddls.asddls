@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface view for EMPLOYEE'
define root view entity ZI_RAP_EMPLOYEE_99
  as select from zrap_employee_99 as Employee

  composition [0..*] of ZI_RAP_PROJECT_99 as _Project
{

  key id                    as Id,
      firstname             as Firstname,
      lastname              as Lastname,
      age                   as Age,
      role                  as Role,
      salary                as Salary,
      active                as Active,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at       as LastChangedAt,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,

      /* associations */
      _Project
}
