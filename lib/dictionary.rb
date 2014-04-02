require 'trie'

module Dictionary

	extend self

	def build_dictionary
		@dictionary = trie_from_system_dictionary
	end

	def match_words(prefix)
		@dictionary.autocomplete(prefix)
	end

private

	def trie_from_system_dictionary
		@dictionary = populate(Rails.root.join('lib/dictionary.txt'))
	end

	def populate(filepath)
		t = Trie.new
		File.open(filepath).each do |word|
			t.insert(word.strip)
		end
		t
	end

end
