class ApplicantsController < ApplicationController
  # GET /applicants
  # GET /applicants.json
  def index
    @applicants = Applicant.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @applicants }
    end
  end

  # GET /applicants/1
  # GET /applicants/1.json
  def show
    @applicant = Applicant.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @applicant }
    end
  end

  # GET /applicants/new
  # GET /applicants/new.json
  def new
    @applicant = Applicant.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @applicant }
    end
  end

  # GET /applicants/1/edit
  def edit
    @applicant = Applicant.find(params[:id])
  end

  # POST /applicants
  # POST /applicants.json
  def create
    @applicant = Applicant.new(params[:applicant])

    respond_to do |format|
      if @applicant.save
        if @applicant.wall_post == true
          User.delay.share_application(current_user.id, applicant_url(@applicant))
        end
        UserMailer.applicant_confirmation(@applicant).deliver
        format.html { redirect_to success_applicant_path(@applicant), notice: 'Applicant was successfully created.' }
        format.json { render json: @applicant, status: :created, location: @applicant }
      else
        format.html { render action: "new" }
        format.json { render json: @applicant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /applicants/1
  # PUT /applicants/1.json
  def update
    @applicant = Applicant.find(params[:id])

    respond_to do |format|
      if params[:raw_button]
        @applicant.update_attributes(params[:applicant])
          if @applicant.status == 2
            UserMailer.applicant_next_stage(@applicant).deliver
          elsif @applicant.status == 99
            UserMailer.applicant_rejected(@applicant).deliver
          else
          end
          format.html { redirect_to raw_path, notice: 'Applicant was successfully updated.' }
          format.json { head :no_content }
      else
        if @applicant.update_attributes(params[:applicant])
          format.html { redirect_to @applicant, notice: 'Applicant was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @applicant.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # DELETE /applicants/1
  # DELETE /applicants/1.json
  def destroy
    @applicant = Applicant.find(params[:id])
    @applicant.destroy

    respond_to do |format|
      format.html { redirect_to applicants_url }
      format.json { head :no_content }
    end
  end

  def info

  end

  def apply
    if current_user
      redirect_to new_applicant_path
    end
  end

  def success
    @applicant = Applicant.find(params[:id])
  end

  def raw
    @raw_applicants = Applicant.find(:all, :conditions => {:status => 1})
  end

  def updateraw
    @applicant = Applicant.find(params[:id])
  end

  def medium

  end

  def bacon

  end

  def burned

  end
end
