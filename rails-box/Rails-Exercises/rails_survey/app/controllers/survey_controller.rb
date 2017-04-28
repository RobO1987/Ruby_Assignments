class SurveyController < ApplicationController

  def index
    if session[:number].nil?
      session[:number] = 0
    end
    render "survey/index"
  end

  def submission
    session[:surveyresults] = params[:testparamkey]
    session[:number] += 1
    redirect_to '/results'
  end

  def results
    @result = session[:surveyresults]
    flash[:message] = "Thanks form has been submitted #{session[:number]} number of times"
    render "survey/result"
  end

  def clear
    session.clear
    redirect_to '/'
  end
end
