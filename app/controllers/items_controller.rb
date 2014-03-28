class ItemsController < ApplicationController
	before_filter :get_list

	def get_list
	    @list = List.find(params[:list_id]) if params[:list_id]
	end

	def destroy
	  @item = Item.find(params[:id])
	  @item.destroy
	end
end
