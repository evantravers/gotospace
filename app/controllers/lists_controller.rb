class ListsController < ApplicationController
  before_filter :authenticate_user!
  def index
    @lists = Lists.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lists}
    end
  end
  
  def new
    @list = Lists.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @list }
    end
  end
end
