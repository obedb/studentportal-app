class ExperiencesController < ApplicationController

  def index 
    @experiences = Unirest.get("http://localhost:3000/experiences
  end

  def show
   @experience = Unirest.get("http://localhost:3000/experiences/#{params[:id]}.json"
  end

  def edit 
    @experience = Unirest.get("http://localhost:3000/experiences/#{params[:id]}.json")
  end

  def update
    @experience = Unirest.patch("http://localhost:3000/experiences/#{params[:id]}.json",:parameters => {:id=> params[:id], :start_date=> params[:start_date], :degree=> params[:degree],:university_name=> params[:university_name], :details => params[:details]}).body
    return Experience.new(experience_hash)
  end
end
