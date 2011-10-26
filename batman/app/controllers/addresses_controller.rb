class AddressesController < ApplicationController

	def index
	list
	render('list')
	end
	
	#read
	def show
		@address=Address.find(params[:id])
	end

	
	def list
		@address=Address.order("addresses.id ASC")
	end
	
	#create
	def new
		@address = Address.new
	end
	
	def create
		#instantiate a new object using form paramters
		@address = Address.new(params[:address])
		
		#if subject saves then go back to the list of address
		if @address.save
			flash[:notice]="address created"
			redirect_to(:action => 'list') 
		else
			render('new') #which fills in using params
		end 
	end
		
	#update
	def edit
		@address=Address.find(params[:id])
	end
	
	def update
		@address=Address.find(params[:id])
		if @address.update_attributes(params[:address])
			redirect_to(:action => 'show', :id => @address.id)
		else 
			render('edit')
		end
		
	end	
	
	
	def delete
		@address=Address.find(params[:id])
	end
	
	def destroy
		@address=Address.find(params[:id])
		@address.destroy
		redirect_to(:action => 'list')
	end
	
end
