class InvoicesController < ApplicationController
  def index
    @invoices = Invoice.all

    render("invoice_templates/index.html.erb")
  end

  def show
    @invoice = Invoice.find(params.fetch("id_to_display"))

    render("invoice_templates/show.html.erb")
  end

  def new_form
    @invoice = Invoice.new

    render("invoice_templates/new_form.html.erb")
  end

  def create_row
    @invoice = Invoice.new

    @invoice.invoice_number = params.fetch("invoice_number")
    @invoice.creation_date = params.fetch("creation_date")
    @invoice.work_order_id = params.fetch("work_order_id")

    if @invoice.valid?
      @invoice.save

      redirect_to( "/invoices", :notice => "Invoice created successfully.")
    else
      render("invoice_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @invoice = Invoice.find(params.fetch("prefill_with_id"))

    render("invoice_templates/edit_form.html.erb")
  end

  def update_row
    @invoice = Invoice.find(params.fetch("id_to_modify"))

    @invoice.invoice_number = params.fetch("invoice_number")
    @invoice.creation_date = params.fetch("creation_date")
    @invoice.work_order_id = params.fetch("work_order_id")

    if @invoice.valid?
      @invoice.save

      redirect_to("/invoices/#{@invoice.id}", :notice => "Invoice updated successfully.")
    else
      render("invoice_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @invoice = Invoice.find(params.fetch("id_to_remove"))

    @invoice.destroy

    redirect_to("/invoices", :notice => "Invoice deleted successfully.")
  end
end
