Rails.application.routes.draw do
  
  root "work_orders#index"
  
  # Routes for the Expense subcategory resource:
  
  # CREATE
  get("/expense_subcategories/new", { :controller => "expense_subcategories", :action => "new_form" })
  post("/create_expense_subcategory", { :controller => "expense_subcategories", :action => "create_row" })

  # READ
  get("/expense_subcategories", { :controller => "expense_subcategories", :action => "index" })
  get("/expense_subcategories/:id_to_display", { :controller => "expense_subcategories", :action => "show" })

  # UPDATE
  get("/expense_subcategories/:prefill_with_id/edit", { :controller => "expense_subcategories", :action => "edit_form" })
  post("/update_expense_subcategory/:id_to_modify", { :controller => "expense_subcategories", :action => "update_row" })

  # DELETE
  get("/delete_expense_subcategory/:id_to_remove", { :controller => "expense_subcategories", :action => "destroy_row" })

  #------------------------------

  # Routes for the Expense category resource:

  # CREATE
  get("/expense_categories/new", { :controller => "expense_categories", :action => "new_form" })
  post("/create_expense_category", { :controller => "expense_categories", :action => "create_row" })

  # READ
  get("/expense_categories", { :controller => "expense_categories", :action => "index" })
  get("/expense_categories/:id_to_display", { :controller => "expense_categories", :action => "show" })

  # UPDATE
  get("/expense_categories/:prefill_with_id/edit", { :controller => "expense_categories", :action => "edit_form" })
  post("/update_expense_category/:id_to_modify", { :controller => "expense_categories", :action => "update_row" })

  # DELETE
  get("/delete_expense_category/:id_to_remove", { :controller => "expense_categories", :action => "destroy_row" })

  #------------------------------

  # Routes for the Expense resource:

  # CREATE
  get("/expenses/new", { :controller => "expenses", :action => "new_form" })
  post("/create_expense", { :controller => "expenses", :action => "create_row" })

  # READ
  get("/expenses", { :controller => "expenses", :action => "index" })
  get("/expenses/:id_to_display", { :controller => "expenses", :action => "show" })

  # UPDATE
  get("/expenses/:prefill_with_id/edit", { :controller => "expenses", :action => "edit_form" })
  post("/update_expense/:id_to_modify", { :controller => "expenses", :action => "update_row" })

  # DELETE
  get("/delete_expense/:id_to_remove", { :controller => "expenses", :action => "destroy_row" })

  #------------------------------

  # Routes for the Cash balance resource:

  # CREATE
  get("/cash_balances/new", { :controller => "cash_balances", :action => "new_form" })
  post("/create_cash_balance", { :controller => "cash_balances", :action => "create_row" })

  # READ
  get("/cash_balances", { :controller => "cash_balances", :action => "index" })
  get("/cash_balances/:id_to_display", { :controller => "cash_balances", :action => "show" })

  # UPDATE
  get("/cash_balances/:prefill_with_id/edit", { :controller => "cash_balances", :action => "edit_form" })
  post("/update_cash_balance/:id_to_modify", { :controller => "cash_balances", :action => "update_row" })

  # DELETE
  get("/delete_cash_balance/:id_to_remove", { :controller => "cash_balances", :action => "destroy_row" })

  #------------------------------

  devise_for :users
  # Routes for the Employee resource:

  # CREATE
  get("/employees/new", { :controller => "employees", :action => "new_form" })
  post("/create_employee", { :controller => "employees", :action => "create_row" })

  # READ
  get("/employees", { :controller => "employees", :action => "index" })
  get("/employees/:id_to_display", { :controller => "employees", :action => "show" })

  # UPDATE
  get("/employees/:prefill_with_id/edit", { :controller => "employees", :action => "edit_form" })
  post("/update_employee/:id_to_modify", { :controller => "employees", :action => "update_row" })

  # DELETE
  get("/delete_employee/:id_to_remove", { :controller => "employees", :action => "destroy_row" })

  #------------------------------

  # Routes for the Work order resource:

  # CREATE
  get("/work_orders/new", { :controller => "work_orders", :action => "new_form" })
  post("/create_work_order", { :controller => "work_orders", :action => "create_row" })

  # READ
  get("/work_orders", { :controller => "work_orders", :action => "index" })
  get("/work_orders/:id_to_display", { :controller => "work_orders", :action => "show" })

  # UPDATE
  get("/work_orders/:prefill_with_id/edit", { :controller => "work_orders", :action => "edit_form" })
  post("/update_work_order/:id_to_modify", { :controller => "work_orders", :action => "update_row" })

  # DELETE
  get("/delete_work_order/:id_to_remove", { :controller => "work_orders", :action => "destroy_row" })

  #------------------------------

  # Routes for the Invoice resource:

  # CREATE
  get("/invoices/new", { :controller => "invoices", :action => "new_form" })
  post("/create_invoice", { :controller => "invoices", :action => "create_row" })

  # READ
  get("/invoices", { :controller => "invoices", :action => "index" })
  get("/invoices/:id_to_display", { :controller => "invoices", :action => "show" })

  # UPDATE
  get("/invoices/:prefill_with_id/edit", { :controller => "invoices", :action => "edit_form" })
  post("/update_invoice/:id_to_modify", { :controller => "invoices", :action => "update_row" })

  # DELETE
  get("/delete_invoice/:id_to_remove", { :controller => "invoices", :action => "destroy_row" })

  #------------------------------

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
