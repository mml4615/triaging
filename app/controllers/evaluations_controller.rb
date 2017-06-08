class EvaluationsController < ApplicationController
  def index
    @evaluations = Evaluation.all

    render("evaluations/index.html.erb")
  end

  def show
    @evaluation = Evaluation.find(params[:id])

    render("evaluations/show.html.erb")
  end

  def new
    @evaluation = Evaluation.new

    render("evaluations/new.html.erb")
  end

  def create
    @evaluation = Evaluation.new

    @evaluation.user_id = params[:user_id]
    @evaluation.prescription = params[:prescription]
    @evaluation.alcohol_use = params[:alcohol_use]
    @evaluation.drug_use = params[:drug_use]
    @evaluation.feeling = params[:feeling]
    @evaluation.appointment_reason = params[:appointment_reason]
    @evaluation.thoughts_suicide_harm = params[:thoughts_suicide_harm]
    @evaluation.attempted_suicide = params[:attempted_suicide]
    @evaluation.unsafe_sex = params[:unsafe_sex]
    @evaluation.violent_behaviour = params[:violent_behaviour]
    @evaluation.domestic_abuse = params[:domestic_abuse]
    @evaluation.criminal_activity = params[:criminal_activity]
    @evaluation.diagnosed_condition = params[:diagnosed_condition]
    @evaluation.hospital_admissions = params[:hospital_admissions]
    @evaluation.hallucinations = params[:hallucinations]
    @evaluation.disability = params[:disability]
    @evaluation.availability = params[:availability]
    @evaluation.insurance = params[:insurance]

    save_status = @evaluation.save

    if save_status == true
      redirect_to("/evaluations/#{@evaluation.id}", :notice => "Evaluation created successfully.")
    else
      render("evaluations/new.html.erb")
    end
  end

  def edit
    @evaluation = Evaluation.find(params[:id])

    render("evaluations/edit.html.erb")
  end

  def update
    @evaluation = Evaluation.find(params[:id])

    @evaluation.user_id = params[:user_id]
    @evaluation.prescription = params[:prescription]
    @evaluation.alcohol_use = params[:alcohol_use]
    @evaluation.drug_use = params[:drug_use]
    @evaluation.feeling = params[:feeling]
    @evaluation.appointment_reason = params[:appointment_reason]
    @evaluation.thoughts_suicide_harm = params[:thoughts_suicide_harm]
    @evaluation.attempted_suicide = params[:attempted_suicide]
    @evaluation.unsafe_sex = params[:unsafe_sex]
    @evaluation.violent_behaviour = params[:violent_behaviour]
    @evaluation.domestic_abuse = params[:domestic_abuse]
    @evaluation.criminal_activity = params[:criminal_activity]
    @evaluation.diagnosed_condition = params[:diagnosed_condition]
    @evaluation.hospital_admissions = params[:hospital_admissions]
    @evaluation.hallucinations = params[:hallucinations]
    @evaluation.disability = params[:disability]
    @evaluation.availability = params[:availability]
    @evaluation.insurance = params[:insurance]

    save_status = @evaluation.save

    if save_status == true
      redirect_to("/evaluations/#{@evaluation.id}", :notice => "Evaluation updated successfully.")
    else
      render("evaluations/edit.html.erb")
    end
  end

  def destroy
    @evaluation = Evaluation.find(params[:id])

    @evaluation.destroy

    if URI(request.referer).path == "/evaluations/#{@evaluation.id}"
      redirect_to("/", :notice => "Evaluation deleted.")
    else
      redirect_to(:back, :notice => "Evaluation deleted.")
    end
  end
end
