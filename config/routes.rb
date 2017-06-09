Rails.application.routes.draw do
  # Routes for the Evaluation resource:
  # CREATE
  get "/evaluations/new", :controller => "evaluations", :action => "new"
  post "/create_evaluation", :controller => "evaluations", :action => "create"

  # READ
  get "/evaluations", :controller => "evaluations", :action => "index"
  get "/evaluations/:id", :controller => "evaluations", :action => "show"

  # UPDATE
  get "/evaluations/:id/edit", :controller => "evaluations", :action => "edit"
  post "/update_evaluation/:id", :controller => "evaluations", :action => "update"

  # TRiage
  get "/users/triage", :controller => "users", :action => "triage"

  # DELETE
  get "/delete_evaluation/:id", :controller => "evaluations", :action => "destroy"
  #------------------------------

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root 'evaluations#new'

end
