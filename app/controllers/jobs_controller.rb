class JobsController < ApplicationController
	def index
		@jobs = Job.all
	end

  def new
  	@job = Job.new
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
  	@job = Job.find(params[:id])
  end

  private
  	def job_params
  		params.require(:job).permit(
				:title,
				:level, # enum {non-specified: 0, jr : 1, midlevel: 2, sr: 3 }
				:description,
				:job_reference_id,
				:city_locaiton,
				:board_name,
				:manager_name,
				:contact_with_company,)
  	end

end
