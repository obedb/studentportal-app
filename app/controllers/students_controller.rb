class StudentsController < ApplicationController

  def index
<<<<<<< HEAD
    @students = Unirest.get("http://localhost:3000/students.json").body
    @students = Unirest.get("localhost:3000/students.json").body
    # @students = Student.all 
=======
    @students = Unirest.get("http://localhost:3000/api/v2/students.json").body['student']
>>>>>>> eb298f173fa8cb4fa14bf816401296e579cbff2e
  end

  def show
    @student = Unirest.get("http://localhost:3000/api/v2/students/#{params[:id]}.json").body
 

  end
  
  def edit
    @student = Unirest.get("http://localhost:3000/api/v2/students/#{params[:id]}.json").body
  end

  def update
    @student = Unirest.patch("http://localhost:3000/api/v2/students/#{params[:id]}.json", :parameters => {:id=> params[:id], :first_name=> params[:first_name], :last_name=> params[:last_name],:email => params[:email], :phone_number=> params[:phone_number],:short_bio=> params[:short_bio], :linkedin_url=> params[:linkedin_url], :twitter_handle=> params[:twitter_handle], :blog_url=> params[:blog_url], :resume_url=> params[:resume_url], :github_url=> params[:github_url], :photo=> params[:photo]}).body

    return Student.new(student_hash)
  end
end
