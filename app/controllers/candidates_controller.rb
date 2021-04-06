class CandidatesController < ApplicationController
  before_action :authenticate_corporation!
  
  def index
    @candidates = Candidate.all
  end
  
  def show
    @candidate = Candidate.find_by(id: params[:id])
  end
end
