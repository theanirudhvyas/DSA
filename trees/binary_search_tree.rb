
class TreeNode
  attr_accessor :data, :left, :right

  def initialize(data)
    @data = data
    @left = nil
    @right = nil
  end
end

class BinaryTree
  attr_accessor :root

  def initialize(data)
    @root = TreeNode.new(data)
  end

  def insert_node(data, root)
    if root.nil?
      root = TreeNode.new(data)
    else
      if data > root.data
        if root.right.nil?
          root.right = TreeNode.new(data)
        else
          insert_node(data, root.right)
        end
      else
        if root.left.nil?
          root.left = TreeNode.new(data)
        else
          insert_node(data, root.left)
        end
      end
    end
  end

  def find_node(data , root)

    if data == root.data
      return root
    elsif data <= root.data
      find_node(data, root.left)
    else data > root.data
      find_node(data, root.right)
    end

    return nil
  end

  def inorder_traversal(root)
    return if root.nil?
    inorder_traversal(root.left) unless root.left.nil?
    p root.data
    inorder_traversal(root.right) unless root.right.nil?
  end
end


tree = BinaryTree.new(20)
tree.insert_node(22, tree.root)
tree.insert_node(8, tree.root)
tree.insert_node(4, tree.root)
tree.insert_node(12, tree.root)
tree.insert_node(10, tree.root)
tree.insert_node(14, tree.root)

tree.inorder_traversal(tree.root)
