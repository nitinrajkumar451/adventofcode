file_name='./assignment_pairs.txt'
current_file = File.open(file_name)
file_data = current_file.read
pairs = file_data.split("\n")
total = 0
pairs.each do |pair|
  p = pair
  p0= p.split(",")
  p1=p0[0].split("-")
  p2=p0[1].split("-")
  a=p1[0].to_i
  b=p1[1].to_i
  c=p2[0].to_i
  d=p2[1].to_i
  if(c>=a && d<=b)
    total = total +1
  elsif(a>=c && b<=d)
    total = total +1
  end
end
puts total
