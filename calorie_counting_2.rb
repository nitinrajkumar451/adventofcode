file_name='./elf_calories.txt'
current_file = File.open(file_name)
file_data = current_file.read

all_elves = file_data.split("\n\n")

calories_each_elf = []

all_elves.each do |elf|
  total_calories = 0
  elf=elf.split("\n")
  elf.count.times do |i|
    total_calories= total_calories+elf[i].to_i
    calories_each_elf << total_calories
  end
end

max_carrying_elves= calories_each_elf.sort.reverse
total_top_max = max_carrying_elves.slice(0,3).sum
puts total_top_max

