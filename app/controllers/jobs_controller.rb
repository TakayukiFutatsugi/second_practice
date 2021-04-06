class JobsController < ApplicationController
  before_action :authenticate_corporation!, only: [:new, :create, :edit, :update, :destroy]
  
  def index
    if candidate_signed_in?
      @jobs = Job.all
    elsif corporation_signed_in?
      @jobs = Job.user_id == current_user.id
    else
      @jobs = Job.all
    end
  end
  
  def show
    @job = Job.find_by(id: params[:id])
  end
  
  def new
    @job = Job.new
  end
  
  def create
    @job = Job.new(job_params)
    if @job.save
      redirect_to jobs_path
      flash[:notice] = "投稿されました"
    else
      redirect_to jobs_path
      flash[:alert] = "投稿に失敗しました"
    end  
  end
  
  def edit
    @job = Job.find_by(id: params[:id])
  end
  
  def update
    @job = Job.find_by(id: params[:id])
    if @job.corporation_id = current_corporation.id
      if @job.update(job_params)
        redirect_to jobs_path
        flash[:notice] = "更新を保存しました"
      else
        flash[:alert] = "更新に失敗しました"
        render :edit
      end
    end  
  end
  
  def destroy
    @job = Job.find_by(id: params[:id])  
    if @job.corporation_id = current_corporation.id
      flash[:notice] = "投稿が削除されました"
    else
      flash[:alert] = "削除に失敗しました"
    end
    redirect_to jobs_path
  end
  
  private
    def job_params
      params.require(:job).permit(:title, :status, :monthlyOrAnnual, :salary, :benefitProgram, :holiday,  :language, :framework, :characteristics, :skillset, :selectionProcess, :training, :startingDate, :workplace, :access, :description).merge(corporation_id: current_user.id)
    end
end