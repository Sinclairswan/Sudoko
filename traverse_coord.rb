def traverse_coord(x,y)
  if (y+1 > 8)
    x+=1
    y = 0
  else
    y+=1
  end
   return x , y
end
