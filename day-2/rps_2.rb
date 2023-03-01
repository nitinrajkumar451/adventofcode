def result(moves)
  win_score = 6
  draw_score = 3
  loss_score = 0
  if moves[1] == 'X'
    case moves[0]
    when 'A'
      loss_score+3
    when 'B'
      loss_score+1
    when 'C'
      loss_score+2
    end
    
  elsif moves[1] == 'Y'
    case moves[0]
    when 'A'
      draw_score+1
    when 'B'
      draw_score+2
    when 'C'
      draw_score+3
    end
  else moves[1] == 'Z'
    case moves[0]
    when 'A'
      win_score+2
    when 'B'
      win_score+3
    when 'C'
      win_score+1
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