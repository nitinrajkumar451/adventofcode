require 'set'
file_name = "./code.txt"
current_file=File.open(file_name)
file_data = current_file.read
code_length = file_data.length
max_len = code_length-3
max_len.times do |i|
  set_of_four = file_data.slice(i..i+3).split("").to_set
  if(set_of_four.size==4)
    puts i+4
    break
  end
end
