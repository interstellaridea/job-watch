class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]
	def index
		@jobs = Job.all
	end

  def new
  	@job = Job.new
    @job.build_company
  end

  def create
  	@job = Job.new(job_params)
  	@job.user_id = current_user.id
  	if @job.save
  		flash[:notice] = 'You created a job to track'
  		redirect_to jobs_path
  	else
  		render :new
  	end
  end

  def show
  end

  def edit
  end

  def update
    if @job.update(job_params)
      redirect_to jobs_path, notice: "You successfully updated '#{@job.title}'' job"
    else
      render :edit
    end
  end

  def destroy
    @job.destroy
    redirect_to jobs_path, notice: "Job successfully removed from tracking"
  end

  private
  	def job_params
  		params.require(:job).permit(
				:title,
				:level, # enum {non-specified: 0, jr : 1, midlevel: 2, sr: 3 }
				:description,
				:job_reference_code,
				:city_location,
				:board_name,
				:manager_name,
				:contact_with_company,
        
        company_attributes: [
                              :id,
                              :hq_location,
                              :industry,
                              :num_of_employees,
                              :maturity,
                              :valuation,
                              :logo_url,
                              :website,
                              :notes,
                              :_destroy
                            ]
    )
  	end

    def set_job
      @job = Job.find(params[:id])
    end

end
