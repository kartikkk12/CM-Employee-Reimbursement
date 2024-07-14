# README

# **Employee Reimbursement Portal**

## Main features:

1. Add Employees
2. Edit Employees
3. Delete Employees
4. Create bills
5. View bills
6. View Employees

## Database Schema:

- Department
  - Name
    
- Employee
  - First Name
  - Last Name
  - Email
  - Designation
  - Department  *(foreign key association)*

- Bills
  - Amount
  - Type
  - Employee *(foreign key association)*

## Notes and future scope:

- Bill types can be easily extended for new types of bills in future (code is managed properly).
- Employee deletion leads to deletion of bills created in name of that employee to avoid ghost data.
- Department CRUD can be added.
