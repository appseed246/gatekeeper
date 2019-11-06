class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
    render json: @employees
  end

  def create
    @employee = Employee.create(
      name: params[:name],
      age: params[:age],
      gender: params[:gender],
      enrollment_status: params[:enrollment_status],
      authority: params[:authority],
      department: params[:department]
    )
    render json: @employee
  end

  def update
    @employee = Employee.find(params[:id])
    @employee.update_attributes(employee: params[:employee])
    render json: @employee
  end

  def destroy
    @employee = Employee.find(params[:id])
    if @employee.destroy
      head :no_content, status: :ok
    else
      render json: @employee.errors, status: :unprocessable_entity
    end
  end
end
