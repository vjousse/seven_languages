class Tree
  attr_accessor :children, :node_name

  def initialize(name, children=[])
    @children = build(children)
    @node_name = name
  end

  def build(children)
    tmp = []

    children.each do |key, value|
      tmp.push(Tree.new(key, value))
    end

    tmp
  end

  def visit_all(&block)
    visit &block
    children.each {|c| c.visit_all &block}
  end

  def visit(&block)
    block.call self
  end
end

hash = {'grandpa' => {'dad' => {'child 1' => {}, 'child 2' => {} }, 'uncle' => {'child 3' => { 'subchild 0' => {} }, 'child 4' => { 'subchild' => {} } } } }

ruby_tree = Tree.new("Test", hash)

puts "Visiting a node"
ruby_tree.visit {|node| puts node.node_name}
puts

puts "visiting entire Tree"
ruby_tree.visit_all {|node| p node.node_name}
