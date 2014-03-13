
original = ['can', 'feel', 'singing', 'like', 'a', 'can']
unsorted = original
sorted = [] 
puts "-----------------------------------"
print "original unsorted is #{unsorted}"
puts "\n----------------------------------"

# needed to wrap it all in a method and return the sorted array
def ksort original
	unsorted = original
  sorted = [] 

	(original.length).times do
		if unsorted.length > 1
			marker = 1 # position of item to be checked against first item 
		else
			marker=0
		end
		smallest_encountered =unsorted[0] # actual smallest encountered item  

		while marker < (unsorted.length)
			##puts"*"
			if unsorted[0] < unsorted[marker] 
				current_smallest_p = 0 
			else
				current_smallest_p = marker 
			end
			##puts "current sm is #{unsorted[current_smallest_p]}"
			# check if smallest encountered item is bigger than current smallest item
			if smallest_encountered >= unsorted[current_smallest_p]
				smallest_encountered = unsorted[current_smallest_p]
				smallest_encountered_p = current_smallest_p 
			end
			##puts "sm encountered is #{smallest_encountered}"
			marker += 1 
		end
		##puts "sm encountered p is #{smallest_encountered_p}"
		smallest_aqcuired = unsorted.delete_at(smallest_encountered_p)
		sorted.push(smallest_aqcuired) # adds smallest_acquired in sorted list
	end
	return sorted
end 


p original
p ksort original
p original  
# puts original.sort  # not printing?!
# puts "current sorted is #{sorted}"
# print "current unsorted is #{unsorted}"
# puts "\n"

