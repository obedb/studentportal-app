class SessionsController < ApplicationController
  def new
    render 'new.html.erb'
  end

  def create
    @students = Unirest.get("http://localhost:3000/api/v2/students.json").body
    student = Student.find_by(email: params[:email])
    if student && student.authenticate(params[:password])
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





