class SessionsController < ApplicationController
  def new
    render 'new.html.erb'
  end

  def create
    # make api call to localhost 3000
    @students = Unirest.get("http://localhost:3000/api/v2/students.json").body

    if params[:email] == @students["email"]
      flash[:success] = 'Successfully logged in!'
      redirect_to '/'
    else
      flash[:warning] = 'Invalid email or password!'
      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = 'Successfully logged out!'
    redirect_to '/login'
  end
end