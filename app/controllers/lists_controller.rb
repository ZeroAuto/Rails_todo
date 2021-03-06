class ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit, :update, :destroy]


  def list_params
    params.require(:list).permit(:name, item_attributes: [:id, :name, :done, :_destroy])
  end
  # GET /lists
  # GET /lists.json
  def index
    @lists = List.all
  end

  # GET /lists/1
  # GET /lists/1.json
  def show
    @list = List.find(params[:id])
  end

  # GET /lists/new
  def new
    params.permit!
    @list = List.new
    @item = @list.items.new(params[:item])
  end

  # GET /lists/1/edit
  def edit
    @list = List.find(params[:id])
    @items = @list.items.all
    @list.items.build
  end

  # POST /lists
  # POST /lists.json
  def create
    params.permit!
    @list = List.new(params[:list])
    @item = @list.items.new(params[:item])
    respond_to do |format|
      if @list.save
        format.html { redirect_to lists_url, notice: 'List was successfully created.' }
        format.json { render action: 'show', status: :created, location: @list }
      else
        format.html { render action: 'new' }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lists/1
  # PATCH/PUT /lists/1.json
  def update
    params.permit!
    @list = List.find(params[:id])
    @list.update_attributes! params[:list]
    respond_to do |format|
      if @list.update(list_params)

        format.html { redirect_to edit_list_path, notice: 'List was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lists/1
  # DELETE /lists/1.json
  def destroy
    @list.destroy
    respond_to do |format|
      format.html { redirect_to lists_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list
      @list = List.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def list_params
      params.require(:list).permit(:name, :description)
    end
end
