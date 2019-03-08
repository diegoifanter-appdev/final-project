class WorkOrdersController < ApplicationController
  def index
    @work_orders = WorkOrder.all

    render("work_order_templates/index.html.erb")
  end

  def show
    @work_order = WorkOrder.find(params.fetch("id_to_display"))

    render("work_order_templates/show.html.erb")
  end

  def new_form
    @work_order = WorkOrder.new

    render("work_order_templates/new_form.html.erb")
  end

  def create_row
    @work_order = WorkOrder.new

    @work_order.work_order_number = params.fetch("work_order_number")
    @work_order.employee_id = params.fetch("employee_id")
    @work_order.total_amount = params.fetch("total_amount")
    @work_order.amount_paid = params.fetch("amount_paid")
    @work_order.date_in = params.fetch("date_in")
    @work_order.due_date = params.fetch("due_date")
    @work_order.date_out = params.fetch("date_out")

    if @work_order.valid?
      @work_order.save

      redirect_to("/work_orders", :notice => "Work order created successfully.")
    else
      render("work_order_templates/new_form.html.erb")
    end
  end

  def edit_form
    @work_order = WorkOrder.find(params.fetch("prefill_with_id"))

    render("work_order_templates/edit_form.html.erb")
  end

  def update_row
    @work_order = WorkOrder.find(params.fetch("id_to_modify"))

    @work_order.work_order_number = params.fetch("work_order_number")
    @work_order.employee_id = params.fetch("employee_id")
    @work_order.total_amount = params.fetch("total_amount")
    @work_order.amount_paid = params.fetch("amount_paid")
    @work_order.date_in = params.fetch("date_in")
    @work_order.due_date = params.fetch("due_date")
    @work_order.date_out = params.fetch("date_out")

    if @work_order.valid?
      @work_order.save

      redirect_to("/work_orders/#{@work_order.id}", :notice => "Work order updated successfully.")
    else
      render("work_order_templates/edit_form.html.erb")
    end
  end

  def destroy_row
    @work_order = WorkOrder.find(params.fetch("id_to_remove"))

    @work_order.destroy

    redirect_to("/work_orders", :notice => "Work order deleted successfully.")
  end
end
