#       ["P"]                         ["C"] ["C"]    
#       ["W"]             ["B"]       ["G"] ["V"] ["V"]
#       ["V"]             ["T"] ["Z"] ["J"] ["T"] ["S"]
#       ["D"] ["L"]       ["Q"] ["F"] ["Z"] ["W"] ["R"]
#       ["C"] ["N"] ["R"] ["H"] ["L"] ["Q"] ["F"] ["G"]
# ["F"] ["M"] ["Z"] ["H"] ["G"] ["W"] ["L"] ["R"] ["H"]
# ["R"] ["H"] ["M"] ["C"] ["P"] ["C"] ["V"] ["N"] ["W"]
# ["W"] ["T"] ["P"] ["J"] ["C"] ["G"] ["W"] ["P"] ["J"]
#     1     2     3     4     5     6     7     8     9 
crate1=["W","R","F"]
crate2=["T","H","M","C","D","V","W","P"]
crate3=["P","M","Z","N","L"]
crate4=["J","C","H","R"]
crate5=["C","P","G","H","Q","T","B"]
crate6=["G","C","W","L","F","Z"]
crate7=["W","V","L","Q","Z","J","G","C"]
crate8=["P","N","R","F","W","T","V","C"]
crate9=["J","W","H","G","R","S","V"]

file_name = "./crates.txt"
current_file=File.open(file_name)
file_data = current_file.read
moves=file_data.split("\n")
moves.each do |m|
  move = m.split(" ")
  number_of_crates=move[1].to_i
  from=move[3]
  to=move[5]
  crate_from = 'crate'+from
  crate_from_eval=eval(crate_from)
  crate_to = 'crate'+to
  crate_to_eval=eval(crate_to)
  crate_to_eval.append crate_from_eval.pop(number_of_crates)
  crate_to_eval.flatten!

end

p crate1.pop(), crate2.pop(), crate3.pop(), crate4.pop(), crate5.pop(),crate6.pop(), crate7.pop(),crate8.pop(),crate9.pop()