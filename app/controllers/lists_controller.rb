class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(params[:id])
    @list.save
    redirect_to lists_path
  end

  def list_params
    params.require(:list).permit(:name)
  end
end
