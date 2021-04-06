class EntriesController < ApplicationController
  before_action :authenticate_corporation!
  def create
    job = Job.find(params[:job_id])
    @entry = current_candidate.entries.build do |e|
      e.job = job
    end

    if @entry.save
      redirect_to root_path, notice: "応募が完了しました"
    end  
  end
end
