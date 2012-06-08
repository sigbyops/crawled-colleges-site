class SchoolsController < ApplicationController
	before_filter :signed_in_user, only: [:index, :show]
	
  def show
    @college = School.find(params[:id])
  end
  
  def index
  	if params[:search]
  		@colleges = School.where('schools.name LIKE ?',"%#{params[:search]}%").paginate(page: params[:page])
  	else
  		@colleges = School.paginate(page: params[:page])
  	end
  end
end
