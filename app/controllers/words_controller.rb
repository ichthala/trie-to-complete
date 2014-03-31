class WordsController < ApplicationController
	def index
	end

	def complete
		respond_to do |format|
			# Get all suggestions from the trie here!
			# Note that this is NOT a good design example,
			# as this functionality should really be delegated
			# to a model ("fat models, skinny controllers"). 
			# But we'll keep it here for clarity.
			@suggestions = JSON.generate(suggestions: %w[fun fan fen])
      format.json {render json: @suggestions}
    end
	end
end
