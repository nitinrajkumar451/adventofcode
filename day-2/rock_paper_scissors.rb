def result(moves) 
  win_score = 6
  draw_score = 3
  loss_score = 0
  if moves[0] == 'A'
    case moves[1]
    when 'X'
      draw_score+1
    when 'Y'
      win_score+2
    when 'Z'
      loss_score+3
    end
    
  elsif moves[0] == 'B'
    case moves[1]
    when 'Y'
      draw_score+2
    when 'Z'
      a = win_score+3
    when 'X'
      loss_score+1
    end
  
  else 
    case moves[1]
    when 'Z'
      draw_score+3
    when 'X'
      win_score+1
    when 'Y'
      loss_score+2
    end
  end
end

file_name='./strategy_guide.txt'
current_file = File.open(file_name)
file_data = current_file.read

moves = file_data.split("\n")
rock_score = 1
paper_score = 2
sci_score = 3
win_score = 6
draw_score = 3
loss_score = 0
total_score=0

moves.each do |move|
  each_move = move.split
  res= result(each_move)
  total_score = res + total_score
  
  
end
puts total_score
