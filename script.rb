def fibs(x)
  res = [0, 1]
  until x < 3
    res << res[-1] + res[-2]
    x -= 1
  end
  res
end

def fibs_rec(x)
  if x == 1
    return [0]
  elsif x == 2
    return [0 , 1]
  else
    return fibs_rec(x - 1) + [fibs_rec(x - 1)[-1] + fibs_rec(x - 1)[-2]]
  end
end

print fibs(8)
print "p", fibs_rec(8)
