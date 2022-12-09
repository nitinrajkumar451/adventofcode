
file_name='./elf_calories.txt'
current_file = File.open(file_name)
file_data = current_file.read

all_elves = file_data.split("\n\n")

max_calories=0

all_elves.each do |elf|
  total_calories = 0
  elf=elf.split("\n")
  elf.count.times do |i|
    total_calories= total_calories+elf[i].to_i
  end
  if total_calories>max_calories
    max_calories=total_calories
  end
end

puts max_calories