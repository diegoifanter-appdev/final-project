class EmployeesController < ApplicationController
  def index
    @employees = Employee.all

    render("employee_templates/index.html.erb")
  end

  def show
    @employee = Employee.find(params.fetch("id_to_display"))

    render("employee_templates/show.html.erb")
  end

  def new_form
    @employee = Employee.new

    render("employee_templates/new_form.html.erb")
  end

  def create_row
    @employee = Employee.new

    @employee.first_name = params.fetch("first_name")
    @employee.last_name = params.fetch("last_name")
    @employee.percentage_fee = params.fetch("percentage_fee")

    if @employee.valid?
      @employee.save

      redirect_to("/employees", :notice => "Employee created successfully.")
    else
      render("employee_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @employee = Employee.find(params.fetch("prefill_with_id"))

    render("employee_templates/edit_form.html.erb")
  end

  def update_row
    @employee = Employee.find(params.fetch("id_to_modify"))

    @employee.first_name = params.fetch("first_name")
    @employee.last_name = params.fetch("last_name")
    @employee.percentage_fee = params.fetch("percentage_fee")

    if @employee.valid?
      @employee.save

      redirect_to("/employees/#{@employee.id}", :notice => "Employee updated successfully.")
    else
      render("employee_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @employee = Employee.find(params.fetch("id_to_remove"))

    @employee.destroy

    redirect_to("/employees", :notice => "Employee deleted successfully.")
  end
end
