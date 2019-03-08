class ExpenseCategoriesController < ApplicationController
  def index
    @expense_categories = ExpenseCategory.all

    render("expense_category_templates/index.html.erb")
  end

  def show
    @expense_category = ExpenseCategory.find(params.fetch("id_to_display"))

    render("expense_category_templates/show.html.erb")
  end

  def new_form
    @expense_category = ExpenseCategory.new

    render("expense_category_templates/new_form.html.erb")
  end

  def create_row
    @expense_category = ExpenseCategory.new

    @expense_category.name = params.fetch("name")

    if @expense_category.valid?
      @expense_category.save

      redirect_to("/expense_categories", :notice => "Expense category created successfully.")
    else
      render("expense_category_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @expense_category = ExpenseCategory.find(params.fetch("prefill_with_id"))

    render("expense_category_templates/edit_form.html.erb")
  end

  def update_row
    @expense_category = ExpenseCategory.find(params.fetch("id_to_modify"))

    @expense_category.name = params.fetch("name")

    if @expense_category.valid?
      @expense_category.save

      redirect_to("/expense_categories/#{@expense_category.id}", :notice => "Expense category updated successfully.")
    else
      render("expense_category_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @expense_category = ExpenseCategory.find(params.fetch("id_to_remove"))

    @expense_category.destroy

    redirect_to("/expense_categories", :notice => "Expense category deleted successfully.")
  end
end
