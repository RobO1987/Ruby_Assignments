class RpgController < ApplicationController

  def index
    session[:gold] ||=0
    session[:activities] ||= []

    @gold = session[:gold]
    @activities = session[:activities]
  end

  def farm
    timestamp = Time.now.utc.in_time_zone
    temp = session[:gold]
    session[:gold] += rand(10..20)
    session[:activities] << "You received #{session[:gold] - temp} #{timestamp}"
    redirect_to :root
  end

  def cave
    timestamp = Time.now
    temp = session[:gold]
    session[:gold] += rand(5..10)
    session[:activities] << "You received #{session[:gold] - temp} #{timestamp}"
    redirect_to :root
  end

  def house
    timestamp = Time.now
    temp = session[:gold]
    session[:gold] += rand(2..5)
    session[:activities] << "You received #{session[:gold] - temp} #{timestamp}"
    redirect_to :root
  end

  def casino
  timestamp = Time.now
  temp = session[:gold]
  session[:gold] += rand(-50..50)

    if temp > session[:gold]
      session[:activities] << "You lost #{temp - session[:gold]} #{timestamp}"
      redirect_to :root
    else
      session[:activities] << "You received #{session[:gold] - temp} #{timestamp}"
    redirect_to :root
    end
  end


  def clear
    session.clear
    redirect_to :root
  end

end
