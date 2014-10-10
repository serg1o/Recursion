def merge_sort(arr)
  #turn each element of the array into an array of a single element
  return merge_sort(arr << [arr.shift]) if !(arr[0].is_a? Array)
  return arr[0] if (arr.length == 1)  
  if arr.length == 2
    aux = []
    while (!arr[0].empty? && !arr[1].empty?)
      (arr[0][0] > arr[1][0]) ? aux.push(arr[1].shift) : aux.push(arr[0].shift)
    end
    arr[0].each {|x| aux.push(x)}
    arr[1].each {|x| aux.push(x)}
    return aux
  elsif arr.length > 2
    return merge_sort([merge_sort(arr[0..(arr.length/2-1)]), merge_sort(arr[(arr.length/2)..-1])])
  end
end


puts merge_sort([5,2]).inspect
puts merge_sort([4,2,15,14]).inspect
puts merge_sort([3,1,9,2,5,4,15]).inspect
puts merge_sort([8,2,15,3,13,10,11,9,24,20]).inspect
puts merge_sort([8,2,15,14,6,7,4,5,1,3,13,10,11,9,21,20,7]).inspect
puts merge_sort([70,12,15,14,6,7,4,-500,2,1,3,13,10,11,9,21,20,7]).inspect
puts merge_sort([17,2,5]).inspect
puts merge_sort([2]).inspect

