require 'trie'

module TrieBuilder

	extend self

	def populate
	end

	def trie_from_dictionary
		return @dictionary if @dictionary
		# Your trie-building method goes here!
	end

	def match_words(prefix: '', count:)
		trie_from_dictionary.autocomplete
	end

end
