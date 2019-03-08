class CashBalancesController < ApplicationController
  def index
    @cash_balances = CashBalance.all

    render("cash_balance_templates/index.html.erb")
  end

  def show
    @cash_balance = CashBalance.find(params.fetch("id_to_display"))

    render("cash_balance_templates/show.html.erb")
  end

  def new_form
    @cash_balance = CashBalance.new

    render("cash_balance_templates/new_form.html.erb")
  end

  def create_row
    @cash_balance = CashBalance.new

    @cash_balance.date = params.fetch("date")
    @cash_balance.balance = params.fetch("balance")

    if @cash_balance.valid?
      @cash_balance.save

      redirect_to("/cash_balances", :notice => "Cash balance created successfully.")
    else
      render("cash_balance_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @cash_balance = CashBalance.find(params.fetch("prefill_with_id"))

    render("cash_balance_templates/edit_form.html.erb")
  end

  def update_row
    @cash_balance = CashBalance.find(params.fetch("id_to_modify"))

    @cash_balance.date = params.fetch("date")
    @cash_balance.balance = params.fetch("balance")

    if @cash_balance.valid?
      @cash_balance.save

      redirect_to("/cash_balances/#{@cash_balance.id}", :notice => "Cash balance updated successfully.")
    else
      render("cash_balance_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @cash_balance = CashBalance.find(params.fetch("id_to_remove"))

    @cash_balance.destroy

    redirect_to("/cash_balances", :notice => "Cash balance deleted successfully.")
  end
end
