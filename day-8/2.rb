
require 'set'
def scene(array, ele)
  score = 1
  if array.length>1

    array.each_with_index do |e,i|
      if(i<array.length-1)

        if (ele>e)
          score=score+1
        else
          break
        end
      end
    end
  end
  return score
end
file_name = './input.txt'
current_file=File.open(file_name)
file_data = current_file.read
rows = file_data.split("\n")
row_array=[]
rows.length.times do |i|
  row_array << rows[i].split("")
end
row_transpose = row_array.transpose()

l=0
r=0
t=0
b=0
scenic_score=[]
99.times do |i|
  99.times do |j|
    if(i>0&&i<98&&j>0&&j<98)
      ele=row_array[i][j]
      l =row_array[i].slice(..j-1)
      left=l.reverse()
      r= row_array[i].slice(j+1..)
      t =row_transpose[j].slice(..i-1)
      top=t.reverse()
      b=row_transpose[j].slice(i+1..)
      if(left.length==1)
        left_score=1
      else
        left_score = scene(left, ele)
      end
      if(r.length==1)
        right_score=1
      else

        right_score = scene(r, ele)
      end
      if(top.length==1)
        top_score=1
      else
        top_score = scene(top, ele)
      end
      if(b.length==1)
        bottom_score=1
      else
        bottom_score = scene(b, ele)
      end
      total_score=(left_score*right_score*top_score*bottom_score)
      scenic_score<<total_score
    end
  end
end

puts scenic_score.max { |a, b| a<=>b} 
