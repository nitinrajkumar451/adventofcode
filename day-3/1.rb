require 'set'
dictionary= {
  "a"=>1,
  "b"=>2,
  "c"=>3,
  "d"=>4,
  "e"=>5,
  "f"=>6,
  "g"=>7,
  "h"=>8,
  "i"=>9,
  "j"=>10,
  "k"=>11,
  "l"=>12,
  "m"=>13,
  "n"=>14,
  "o"=>15,
  "p"=>16,
  "q"=>17,
  "r"=>18,
  "s"=>19,
  "t"=>20,
  "u"=>21,
  "v"=>22,
  "w"=>23,
  "x"=>24,
  "y"=>25,
  "z"=>26,
  "A"=>27,
  "B"=>28,
  "C"=>29,
  "D"=>30,
  "E"=>31,
  "F"=>32,
  "G"=>33,
  "H"=>34,
  "I"=>35,
  "J"=>36,
  "K"=>37,
  "L"=>38,
  "M"=>39,
  "N"=>40,
  "O"=>41,
  "P"=>42,
  "Q"=>43,
  "R"=>44,
  "S"=>45,
  "T"=>46,
  "U"=>47,
  "V"=>48,
  "W"=>49,
  "X"=>50,
  "Y"=>51,
  "Z"=>52
}
file_name='./ruckshacks.txt'
current_file = File.open(file_name)
file_data = current_file.read

ruckshack = file_data.split("\n")
priorities = 0
ruckshack.each do |r|

  compartment_length = r.length
  
  compartment_1 = r.slice(0..(compartment_length/2-1)).split("")
  compartment_2 = r.slice((compartment_length/2)..compartment_length-1).split("")
  
  item_type =  (compartment_1.to_set & compartment_2.to_set).to_a
  priorities = priorities+(dictionary[item_type[0].to_s])
end

puts priorities