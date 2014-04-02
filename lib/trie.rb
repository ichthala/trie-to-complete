require 'set'
class Trie

  attr_accessor :children, :value, :word_end

  def initialize(value=nil)
    @children = {}
    @value = value
    @word_end = false #word_end to represent that a word ends at this node
  end
  
  def add(char)
    val = value ? value + char : char
    children[char] = Trie.new(val)
  end
  
  def insert(word)
    node = self
    word.each_char do |char|
      node.add(char) if not node.children.has_key?(char)
      node = node.children[char]
    end
    node.word_end = true
  end
  
  def find(word)
    node = self
    word.each_char do |char|
      return nil if not node.children.has_key?(char)
      node = node.children[char]
    end
    return node.value
  end
  
  def all_suggestions
    results = Set.new
    results.add value if word_end
    return results if children.empty?
    
    as = children.values.collect {|node| node.all_suggestions}
    
    reduced = as.reduce {|a,b| a.merge b}
    reduced or results
  end
  
  def autocomplete(prefix)
    node = self
    prefix.each_char do |char|
      return [] if not node.children.has_key? char
      node = node.children[char]
    end
    return node.all_suggestions
  end
end
