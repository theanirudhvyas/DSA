

def inorder_traversal(root, array)

  inorder_traversal(root.left, array) unless root.left.nil?
  array << root.data
  inorder_traversal(root.right, array) unless root.right.nil?
end

def kth_smallest(root, k)

  inorder_array = []
  inorder_traversal(root, inorder_array)

  return inorder_array[k-1]

end



def kth_smallest_v2(root,k)

  kth_smallest_v2(root.left, k) unless root.left.nil?
  return root.data if k == 0
  k -= 1
  kth_smallest_v2(root.right, k) unless root.right.nil?
end


# https://www.interviewbit.com/problems/kth-smallest-element-in-tree/
