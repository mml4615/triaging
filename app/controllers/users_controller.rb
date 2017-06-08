class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def triage
    @users = User.all
    @evaluations = Evaluation.all
    @evaluation.user_id = params[:user_id]


  end

end
