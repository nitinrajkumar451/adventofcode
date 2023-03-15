require 'matrix'
require 'set'
def check_tall(array, element)
  len = array.length
  threshold= len
  count = 0
  array.each do |ele|
    if (element>ele)
      count=count+1
    end
  end
  if count==threshold
    return 1
  else
    return 0
  end
end
file_name = './input.txt'
current_file=File.open(file_name)
file_data = current_file.read
rows = file_data.split("\n")
row_array=[]
rows.length.times do |i|
  row_array << rows[i].split("")
end
matrix= Matrix[*row_array]
matrix_transpose = matrix.transpose()
mat_arr = matrix_transpose.to_a
arr1=[]
total =0
row_count= row_array.length
row_count.times do |i|
  if(i>0&&i<row_count-1)
    each_row_count = row_array[i].length

    row_array[i].each_with_index do |row_ele,j|
      # puts j, row_ele, "row_element"
      #check if any element from left that point is greater than the element at index
      #check if any element from the point to the right is greater than the element at index
      #return 1 if no element greater than current element is found
      row_len=row_array[i].length
      if(j>0&&j<row_len-1)
        left_array= row_array[i].slice(..j-1)
        right_array=row_array[i].slice(j+1..)
        check_left_tall = check_tall(left_array,row_ele)
        if(check_left_tall==1)
          arr1<<[i,j]
        else
          check_right_tall = check_tall(right_array,row_ele)
          if(check_right_tall==1)
            arr1<<[i,j]
          end
        end
      end
    end
    
  end
end
# for the transpose of matrix
arr2=[]
total =0
row_count= mat_arr.length
# puts row_count, "row_count"
row_count.times do |i|
  if(i>0&&i<row_count-1)
    each_row_count = mat_arr[i].length
    # puts row_array[i], "#{i}th row"
    mat_arr[i].each_with_index do |row_ele,j|
      # puts j, row_ele, "row_element"
      #check if any element from left that point is greater than the element at index
      #check if any element from the point to the right is greater than the element at index
      #return 1 if no element greater than current element is found
      row_len=mat_arr[i].length
      if(j>0&&j<row_len-1)
        left_array= mat_arr[i].slice(..j-1)
        right_array=mat_arr[i].slice(j+1..)
        check_left_tall = check_tall(left_array,row_ele)
        if(check_left_tall==1)
          total= total+1
          arr2<<[j,i]
        else
          check_right_tall = check_tall(right_array,row_ele)
          if(check_right_tall==1)
            total= total+1
            arr2<<[j,i]
          end
        end
      end
    end
    
  end
end
m1= Matrix[*arr1]
m2= Matrix[*arr2]
m11= m1.to_a
m22= m2.to_a
mr = (m11.to_set | m22.to_set).to_a
total = mr.length 
puts (total +98*4)