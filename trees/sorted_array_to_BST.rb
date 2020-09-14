require_relative './binary_search_tree.rb'

def array_to_BST(array)
  if array.length == 0
    return nil
  elsif array.length == 1
    return TreeNode.new(array[0])
  end

  root_index = array.length / 2

  root_node = TreeNode.new(array[root_index])

  root_node.left = array_to_BST(array[0..root_index-1]) if root_index > 0
  root_node.right = array_to_BST(array[root_index+1..-1]) if root_index < array.length - 1

  root_node
end


input = []
root = array_to_BST(input)

t = BinaryTree.new(9)

p '##########'
pp t.inorder_traversal(root)

