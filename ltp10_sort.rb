
blu = ['can', 'feel', 'singing', 'like', 'a', 'can']


def ksort original
  number_to_sort = original.length    #number of items to sort
  unsorted = original   #items remaining to sort
  sorted = []   #items that have been sorted

  (number_to_sort).times do
    print "original is #{original} \n"
    # initializing marker that denotes what is being compared to first item in list
    if unsorted.length > 1
      marker = 1  #initializes marker to second item, if there is more than i item in list 
    else
      marker=0    #sets marker to  first item when there is only one item in list
    end
    smallest_encountered =unsorted[0] # initializing smallest item encountered 

    while marker < (unsorted.length)
      # Compare first item with marker item and set current_smallest_position to whichever smaller
      if unsorted[0] < unsorted[marker] 
        current_smallest_position = 0  #array position for current smallest
      else
        current_smallest_position = marker  #array position for current smallest
      end
    
      # check if smallest encountered item is bigger than current smallest item
      if smallest_encountered >= unsorted[current_smallest_position]
        smallest_encountered = unsorted[current_smallest_position]
        smallest_encountered_p = current_smallest_position 
      end
      ##puts "sm encountered is #{smallest_encountered}"
      marker += 1 
    end
    print "------orig is #{original} \n"
    ##puts "sm encountered p is #{smallest_encountered_p}"
    smallest_aqcuired = unsorted.delete_at(smallest_encountered_p)
    sorted.push(smallest_aqcuired) # adds smallest_acquired in sorted list
  end
  return sorted
end


p blu.sort  # not printing?!
print "blu is #{blu} \n"
print ksort(blu), "\n"
print "blu is #{blu}"
puts "\n"

