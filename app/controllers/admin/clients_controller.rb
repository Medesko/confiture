class Admin::ClientsController < Admin::AdminController
	layout'admin'

	def index
		@clients = Client.all
	end

	def show
		@client = Client.find(params[:id])
	end

	def new
		@clients = Client.new
	end

	def create
		@clients = Client.new(params[:clients].permit(:name, :tel, :email, :address))
		if @clients.save
			flash[:notice] = "le cleint a été ajouté avec succes!"
			redirect_to admin_clients_path
		else
			render 'new'
		end
	end

	def edit
		@clients = Client.find(params[:id])
	end
	def update
		@clients = Client.find(params[:id])
		if @clients.update(params[:clients].permit(:name, :tel, :email, :address))
			flash[:notice] = "Le client a été modifié avec succes!"
			redirect_to admin_clients_path
		else
			render 'edit'
		end
	end

	def destroy
		@clients = Client.find(params[:id])
		if @clients.destroy
			flash[:notice] = "Le client a été supprimé avec succes!"
			redirect_to admin_clients_path
		end
	end
end
