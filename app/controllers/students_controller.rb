class StudentsController < ApplicationController

  def index
<<<<<<< HEAD
    @students = Unirest.get("http://localhost:3000/students.json").body
=======
    @students = Unirest.get("localhost:3000/students.json").body
    # @students = Student.all 
>>>>>>> 59b808cbf99c166a83fa689a97d579bfb4cda5ca
  end

  def show
    @student = Unirest.get("localhost:3000/students/#{:id}.json").body
    
  end
  
  def edit
    @student = Unirest.get("http://localhost:3000/students/#{params[:id]}.json").body
  end

  def update
    @student = Unirest.patch("http://localhost:3000/students/#{params[:id]}.json", :parameters => {:id=> params[:id], :first_name=> params[:first_name], :last_name=> params[:last_name],:email => params[:email], :phone_number=> params[:phone_number],:short_bio=> params[:short_bio], :linkedin_url=> params[:linkedin_url], :twitter_handle=> params[:twitter_handle], :blog_url=> params[:blog_url], :resume_url=> params[:resume_url], :github_url=> params[:github_url], :photo=> params[:photo]}).body

    return Student.new(student_hash)
  end
end
