class ItemsController < ApplicationController

	def index
		@title="Lista de Artigos"
		@items=Item.find(:all,:order=>'list_id')	
	end
	

	def new
		@title="Novo Item"	
		@lists = List.find(:all)
	end
	
	def create
		@item = Item.new(params[:item])
		@item.save
		redirect_to(:action=>'index')	
	end
	
	
	def edit
		@title="Editar Item"
		item_id=params[:id]
		@item = Item.first(:conditions=>'id='<<item_id)		
		@lists = List.find(:all)
	end
	
	def update
     	@item = Item.find(params[:id])   
        @item.update_attributes(params[:item])
		@item.save
		redirect_to(:action=>'index')	
	end
	
	def destroy
		id=params[:id]
		@item=Item.find(id)
		@item.delete
		redirect_to(:action=>'index')		
	end
	

end
