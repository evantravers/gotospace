class ListsController < ApplicationController
  before_filter :authenticate_user!
  # GET /lists
  # GET /lists.json
  def index
    @lists = current_user.lists

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lists }
    end
  end

end
