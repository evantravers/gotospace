class ListsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @lists = current_user.lists
  end

  def show
    @list = current_user.lists.find(params[:id])
  end

  def new
    @list = current_user.lists.new
  end

  def edit
    @list = current_user.lists.find(params[:id])
  end

  def create
    @list = current_user.lists.new(params[:list])

    if @list.save
       redirect_to @list, notice: 'List was successfully created.'
    else
       render 'new'
    end
  end

  def update
    @list = current_user.lists.find(params[:id])

    if @list.update_attributes(params[:list])
     redirect_to @list, notice: 'List was successfully updated.'
    else
     render 'edit'
    end
  end

  def destroy
    @list = current_user.lists.find(params[:id])
    @list.destroy

    redirect_to [:lists]
  end
end
