class EmployeesController < ApplicationController
  before_action :find_employee, only: [:show, :edit, :update]
  # validates :alias, uniqueness: true, if: :impostor_alias?
  # validates :title, uniqueness: true, if: :impostor_title?
# THE ERROR RETURNED WAS undefined method `validates' for EmployeesController:Class

  def index
    @employees = Employee.all
  end

  def show
    find_employee
    @dog = Dog.find(@employee.dog_id)
  end

  def new
    @employee = Employee.new
    @dogs = Dog.all
    # @valid = @employee.validator
  end

  def create
    @employee = Employee.create(employee_params)
    # @employee.validator
    redirect_to employee_path(@employee)
  end

  def edit
    find_employee
    @dogs = Dog.all
  end

  def update
    find_employee
    @employee.update(employee_params)
    redirect_to employee_path(@employee)
  end

  private
  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
  end

  def find_employee
    @employee = Employee.find(params[:id])
  end

end
