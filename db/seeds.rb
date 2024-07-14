# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# db/seeds.rb

# db/seeds.rb

# # Create Departments
# Department.create([
#   { name: 'Sales' },
#   { name: 'Engineering' }
# ])

# Create Employees
Employee.create([
  { first_name: 'John', last_name: 'Doe', email: 'john.doe@example.com', designation: 'SDR', department_id: 1 },
  { first_name: 'Andrew', last_name: 'Smith', email: 'andrew.smith@example.com', designation: 'Intern', department_id: 2 },
  { first_name: 'Jane', last_name: 'Doe', email: 'jane.doe@example.com', designation: 'Manager', department_id: 1 }
])
