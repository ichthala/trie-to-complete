class WordTrie

  def initialize
    @root = Hash.new
  end

  def build(str)
    node = @root
    str.each do |char|
      node[char] ||= Hash.new
      node = node[char]
    end
    node[:end] = true
  end

  def find(str)
    node = @root
    str.each do |char|
      return nil unless node = node[char]
    end
    node[:end] && true
  end

end
