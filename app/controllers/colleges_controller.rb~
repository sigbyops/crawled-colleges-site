class CollegesController < ApplicationController
	before_filter :signed_in_user, only: [:index, :show]
	
  def show
    @college = College.find(params[:id])
  end
  
  def index
  	if params[:search]
  		@colleges = College.where('colleges.name LIKE ?',"%#{params[:search]}%").paginate(page: params[:page])
  	else
  		@colleges = College.paginate(page: params[:page])
  	end
  end
end
