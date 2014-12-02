def rec_intersection(rect1, rect2)
  leftmost, rightmost = order_rect(rect1, rect2)
  if !rightmost[0][0].between?(leftmost[0][0], leftmost[1][0])
    return nil
  end
  if rightmost[1][0].between?(leftmost[0][0], leftmost[1][0]) && 
    rightmost[1][1].between?(leftmost[0][1], leftmost[1][1])
    return rightmost
  end

  bottom_left = [[leftmost[0][0], rightmost[0][0]].max,[leftmost[0][1], rightmost[0][1]].max ]
  top_right = [[leftmost[1][0], rightmost[1][0]].min, [leftmost[1][1], rightmost[1][1]].min]

  [bottom_left, top_right]
end


def order_rect(rect1, rect2)
  if rect2[0][0].between?(rect1[0][0], rect1[1][0])
    return rect1, rect2
  else
    return rect2, rect1
  end
end

