class WordsController < ApplicationController
	def index
	end

	def complete
		respond_to do |format|
      format.json {render json: @suggestions}
    end
	end
end
