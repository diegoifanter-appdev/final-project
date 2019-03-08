class ExpenseSubcategoriesController < ApplicationController
  def index
    @expense_subcategories = ExpenseSubcategory.all

    render("expense_subcategory_templates/index.html.erb")
  end

  def show
    @expense_subcategory = ExpenseSubcategory.find(params.fetch("id_to_display"))

    render("expense_subcategory_templates/show.html.erb")
  end

  def new_form
    @expense_subcategory = ExpenseSubcategory.new

    render("expense_subcategory_templates/new_form.html.erb")
  end

  def create_row
    @expense_subcategory = ExpenseSubcategory.new

    @expense_subcategory.name = params.fetch("name")
    @expense_subcategory.category_id = params.fetch("category_id")

    if @expense_subcategory.valid?
      @expense_subcategory.save

      redirect_to("/expense_subcategories", :notice => "Expense subcategory created successfully.")
    else
      render("expense_subcategory_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @expense_subcategory = ExpenseSubcategory.find(params.fetch("prefill_with_id"))

    render("expense_subcategory_templates/edit_form.html.erb")
  end

  def update_row
    @expense_subcategory = ExpenseSubcategory.find(params.fetch("id_to_modify"))

    @expense_subcategory.name = params.fetch("name")
    @expense_subcategory.category_id = params.fetch("category_id")

    if @expense_subcategory.valid?
      @expense_subcategory.save

      redirect_to("/expense_subcategories/#{@expense_subcategory.id}", :notice => "Expense subcategory updated successfully.")
    else
      render("expense_subcategory_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @expense_subcategory = ExpenseSubcategory.find(params.fetch("id_to_remove"))

    @expense_subcategory.destroy

    redirect_to("/expense_subcategories", :notice => "Expense subcategory deleted successfully.")
  end
end
