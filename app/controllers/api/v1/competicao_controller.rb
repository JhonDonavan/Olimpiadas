module Api
	module V1
        class CompeticaoController < ApplicationController   
			# Listar todos os competições
			def index
				competicao = Competicao.order('created_at DESC');
				render json: {status: 'SUCCESS', message:'Competiçoes carregados', data:competicao},status: :ok
            end

            # Listar competição passando ID
			def show
				article = Article.find(params[:id])
				render json: {status: 'SUCCESS', message:'Loaded article', data:article},status: :ok
            end

            # Criar uma nova competição
			def create
				competicao = Competicao.new(competicao_params)
				if competicao.save
					render json: {status: 'SUCCESS', message:'Saved competição', data:competicao},status: :ok
				else
					render json: {status: 'ERROR', message:'competições not saved', data:competicao.erros},status: :unprocessable_entity
				end
            end

            # Excluir artigo
			def destroy
				competicao = Competicao.find(params[:id])
				competicao.destroy
				render json: {status: 'SUCCESS', message:'Deleted competicao', data:competicao},status: :ok
            end

            def update
				competicao = Competicao.find(params[:id])
				if competicao.update_attributes(competicao_params)
					render json: {status: 'SUCCESS', message:'Updated competicao', data:competicao},status: :ok
				else
					render json: {status: 'ERROR', message:'competicao not update', data:competicao.erros},status: :unprocessable_entity
				end
            end

			# Parametros aceitos
			private
			def competicao_params
				params.permit(:competicao, :dt_inicio, :dt_fim, :encerrada)
            end
		end
	end
end