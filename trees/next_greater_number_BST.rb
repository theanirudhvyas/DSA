

def next_greatest(root, data)
  successor = root

  while root.data != data
    if data < root.data
      successor = root
      root = root.left
    else
      root = root.right
    end
  end

  if root.right != nil
    root = root.right
    while root.left != nil
      root = root.left
    end
    return root
  else
    return nil if successor.data <= data
    return successor.data
  end
end


# https://www.interviewbit.com/problems/next-greater-number-bst/
