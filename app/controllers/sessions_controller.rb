class SessionsController < ApplicationController
  def new
    render 'new.html.erb'
  end

  def create
    @students = Unirest.get("http://localhost:3000/api/v2/students.json").body
    @students.each do |student|
      student 

      if params[:email] == student["email"]
        flash[:success] = 'Successfully logged in!'
        redirect_to '/'
      else
        flash[:warning] = 'Invalid email or password!'
        redirect_to '/login'
      end
    end
  end


  def destroy
    session[:user_id] = nil
    flash[:success] = 'Successfully logged out!'
    redirect_to '/login'

  end
end




