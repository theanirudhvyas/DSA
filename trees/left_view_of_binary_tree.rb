require_relative './binary_search_tree.rb'
def left_view_util(root, level, max_level)
  return [] if root.nil?

  result = []
  if max_level[0] < level
    result += [root.data]
    max_level[0] = level
  end

  result += left_view_util(root.left, level + 1, max_level)
  require 'pry'; binding.pry
  result += left_view_util(root.right, level + 1, max_level)

  result
end

def left_view(root)
  left_view_util(root, 1, [0])
end

root = TreeNode.new(12) 
root.left = TreeNode.new(10) 
root.right = TreeNode.new(20) 
root.right.left = TreeNode.new(25) 
root.right.right = TreeNode.new(40) 

p '#####################'
p left_view(root) 
