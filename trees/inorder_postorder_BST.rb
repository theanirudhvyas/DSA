require_relative './binary_search_tree.rb'

def create_BST(inorder, postorder)

  return if inorder.empty? or postorder.empty?
  root = postorder.pop

  inorder_root_index = nil

  inorder.each_with_index do |val, i|
    if val == root
      inorder_root_index = i
      break
    end
  end

  root_node = TreeNode.new(root)
  root_node.right = create_BST(inorder[inorder_root_index+1..-1], postorder) if inorder_root_index < inorder.length
  root_node.left = create_BST(inorder[0..inorder_root_index-1], postorder) if inorder_root_index > 0

  root_node
end

inorder_input = [ 7, 5, 6, 2, 3, 1, 4 ]
postorder_input = [ 5, 6, 3, 1, 4, 2, 7 ]

create_BST(inorder_input, postorder_input)
