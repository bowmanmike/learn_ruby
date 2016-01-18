def ctof(temp)
  temp * (9.0 / 5.0) + 32

  # if temp == 100
  #   212
  # elsif temp == 0
  #   32
  # else
  #   68
  # end
end

def ftoc(temp)
  (temp - 32) * 5.0 / 9.0

  # if temp == 32
  #   0
  # elsif temp == 68
  #   20
  # elsif temp == 98.6
  #   37
  # else
  #   100
  # end
end
