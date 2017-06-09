class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end


    def triage
      @users = User.all
      @evaluations = Evaluation.all.order("attempted_suicide DESC").order("thoughts_suicide_harm DESC").order("violent_behaviour DESC").order("disability ASC").order(:drug_use, :alcohol_use, :unsafe_sex, :diagnosed_condition)
    render("users/triage.html.erb")
    end

end
