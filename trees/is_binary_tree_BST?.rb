require_relative './binary_search_tree.rb'

@current_node = -Float::INFINITY
@bst = true

def traverse_inorder(root)
  return if root.nil?
  return unless @bst
  traverse_inorder(root.left)
  if root.data < @current_node
    @bst = false
    return
  else
    @current_node = root.data
  end
  traverse_inorder(root.right)
end


def bst? (root)
  traverse_inorder(root)
  return @bst
end

tree = BinaryTree.new(3)
tree.insert_node(2, tree.root)
tree.insert_node(5, tree.root)
tree.insert_node(1, tree.root)
tree.insert_node(4, tree.root)

tree.root.left.right = TreeNode.new(12)

p bst?(tree.root)

