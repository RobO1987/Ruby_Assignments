class RoutesControllersController < ApplicationController

  def index
    if session[:counter] == nil
      session[:counter]=0
    end
    render:text=> "What do you want me to say?"
  end

  def hello
    render:text => "Hello Coding Dojo"
    puts "This is working correctly"
  end

  def say_hello
    render:text => "Saying Hello!"
    puts "This is working correctly"
  end

  def joe
    render:text => "Saying Hello Joe!"
    puts "This is working correctly"
  end

  def michael
    puts "This is working correctly"
    redirect_to "/say/hello/joe"
  end

  def times
    session[:counter] += 1
    x = session[:counter]
    render:text=> "You've visited this url #{x} number of times"
  end

  def clear
    session.clear
    render:text=> "Session is clear!!!"
  end

end
