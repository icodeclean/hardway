values=[2,1,5,0]


def no_odds( values )
  # Return only non-odd values
  even = []
  for i in values 
    if i % 2 == 0
      even.push(i)
    end
  end
  return even
end


p values
ev=no_odds(values)
p ev