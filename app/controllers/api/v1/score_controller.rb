module Api
	module V1
        class ScoreController < ApplicationController   
			# Listar todos os scores
			def index
				score = Score.order('created_at DESC');
				render json: {status: 'SUCCESS', message:'Scores carregados', data:score},status: :ok
            end
		end
	end
end