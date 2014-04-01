require 'spec_helper'

describe Trie do
	before :each do
		@t = Trie.new
	end

	it 'returns all prefixes' do
    words = %w(fun fan apple orange banana)
    words.each do |w|
      @t.insert w
    end
    
    ap = @t.all_prefixes
    
    expect(words.size).to eq ap.size
    
    words.each do |w|
      expect(ap.include? w).to be true
    end
  end
end
