class ListsController < ApplicationController
  # GET /lists
  def index
    @lists = List.all
  end

  # GET /lists/1
  def show
    @list = List.find(params[:id])
  end

  # GET /list/new
  def new
    @list = List.new
  end

  # POST /gardens
  def create
    @list = List.new(list_params)

    if @list.save
      redirect_to @garden, notice: 'List was successfully created.'
    else
      render :new
    end
  end
end
