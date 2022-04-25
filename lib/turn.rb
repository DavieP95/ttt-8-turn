def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
  
def input_to_index(user_input)
  index = user_input.to_i - 1
end
  

def valid_move?(board, index)
    if !position_taken?(board, index) && (index).between?(0,8)
      return true
    else 
      return false
    end
  end

def position_taken?(board,index)
    !(board[index].nil? || board[index] == " " || board[index] == "")
end


def move(array, index, value = "X")
    array[index] = value
end



def turn(board)
    puts "Please enter 1-9:"
    xyz = gets.strip
    user_i = input_to_index(xyz)
    if valid_move?(board,user_i)
        move(board,user_i,"X")
    else
        turn(board)
    end
    display_board(board)
  end