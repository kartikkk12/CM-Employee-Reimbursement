class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def new
    @employee = Employee.new
    @departments = Department.all
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      redirect_to employees_path, notice: 'Employee was successfully created.'
    else
      @departments = Department.all
      render :new
    end
  end
  def show
    set_employee
  end
  def edit
    @employee = Employee.find(params[:id])
    @departments = Department.all
  end

  def update
    @employee = Employee.find(params[:id])
    if @employee.update(employee_params)
      redirect_to employees_path, notice: 'Employee was successfully updated.'
    else
      @departments = Department.all
      render :edit
    end
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    redirect_to employees_path, notice: 'Employee was successfully deleted.'
  end

  private
  def set_employee
    @employee = Employee.find(params[:id])
  end
  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :email, :department_id, :designation)
  end
end
