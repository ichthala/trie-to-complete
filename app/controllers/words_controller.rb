require 'dictionary'

class WordsController < ApplicationController
	def index
	end

	def complete
		respond_to do |format|
			# Get all suggestions from the dictionary here!
			suggestions = {suggestions: Dictionary.match_words(params[:prefix]).to_a}
      format.json {render json: suggestions}
    end
	end
end
