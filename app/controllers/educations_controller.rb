class EducationsController < ApplicationController

   def show
    @education = Unirest.get("http://localhost:3000/api/v2/students/#{params[:id]}.json").body
  end
  def edit
    @education = Unirest.get("http://localhost:3000/api/v2/students/#{params[:id]}.json").body
  end

  def update
    @education = Unirest.patch("http://localhost:3000/api/v2/students/#{params[:id]}.json", :parameters => {:start_date=> params[:start_date], :end_date=> params[:end_date], :degree=> params[:degree],:university_name => params[:university_name], :detail=> params[:detail]}).body

    return Education.new(education_hash)
  end
end
