require 'set'
file_name = "./code.txt"
current_file=File.open(file_name)
file_data = current_file.read
code_length = file_data.length
max_len = code_length-3
max_len.times do |i|
  set_of_four = file_data.slice(i..i+13).split("").to_set
  if(set_of_four.size==14)
    puts i+14
    break
  end
end
