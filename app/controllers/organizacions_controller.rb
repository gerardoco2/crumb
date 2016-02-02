class OrganizacionsController < ApplicationController
	before_action :encontrar_organizacion, only: [:show, :edit, :update, :destroy]
	def index
		@organizacions = Organizacion.all.order("created_at DESC")
	end

	def show
	end

	def new
		@organizacion = Organizacion.new
	end

	def edit
		
	end

	def update
		if @organizacion.update(organizacion_params)
			redirect_to organizacion_path(@organizacion)
		else
			render 'edit'
		end
	end

	def destroy
		@organizacion.destroy

		redirect_to root_path

	end

	def create
		@organizacion = Organizacion.new(organizacion_params)
		if @organizacion.save
			
			render 'exito'	
		else
			render 'new'
		end
	end


	private

	def organizacion_params
		params.require(:organizacion).permit(:nombre,:direccion , :descripcion ,:telefono)
	end

	def encontrar_organizacion
		@organizacion = Organizacion.find(params[:id])
	end
end
