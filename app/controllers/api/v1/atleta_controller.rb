module Api
	module V1
        class AtletaController < ApplicationController   
            # Listar todos os atletas
			def index
				atleta = Atleta.order('created_at DESC');
				render json: {status: 'SUCCESS', message:'atletas carregados', data:atleta},status: :ok
            end

            # Listar atleta passando ID
			def show
				atleta = Atleta.find(params[:id])
				render json: {status: 'SUCCESS', message:'Loaded atleta', data:atleta},status: :ok
            end

            # Criar um novo atleta
			def create
				atleta = Atleta.new(atleta_params)
				if atleta.save
					render json: {status: 'SUCCESS', message:'Saved atleta', data:atleta},status: :ok
				else
					render json: {status: 'ERROR', message:'atleta not saved', data:atleta.erros},status: :unprocessable_entity
				end
            end

            # Excluir atleta
			def destroy
				atleta = Atleta.find(params[:id])
				atleta.destroy
				render json: {status: 'SUCCESS', message:'Deleted atleta', data:atleta},status: :ok
            end

            def update
				atleta = Atleta.find(params[:id])
				if atleta.update_attributes(atleta_params)
					render json: {status: 'SUCCESS', message:'Updated atleta', data:atleta},status: :ok
				else
					render json: {status: 'ERROR', message:'atleta not update', data:atleta.erros},status: :unprocessable_entity
				end
            end

			# Parametros aceitos
			private
			def atleta_params
				params.permit(:nome)
            end
		end
	end
end