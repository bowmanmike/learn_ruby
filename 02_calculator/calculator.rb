def add(x, y)
  x + y
  #
  # if x == 2 && y == 2
  #   4
  # elsif x == 2 && y == 6
  #   8
  # else
  #   0
  # end
end

def subtract(x, y)
  x - y
end

def sum(ary)
  ary.reduce(0){ |sum, x| sum + x }

  # if ary.length == 2
  #   18
  # elsif ary.length == 0
  #   0
  # elsif ary.length == 1
  #   7
  # else
  #   25
  # end
end
