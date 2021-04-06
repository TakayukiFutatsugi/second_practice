class ApplicationController < ActionController::Base
  
  protected
  def devise_parameter_sanitizer
    if resource_class == Candidate
      Candidate::ParameterSanitizer.new(Candidate, :candidate, params)
    elsif resource_class == Corporation
      Corporation::ParameterSanitizer.new(Corporation, :corporation, params)
    else
      super # Use the default one
    end
  end

end
