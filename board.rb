require_relative "card.rb"


class Board

    def initialize(size) #size has to be even
        @grid = Array.new(@size){Array.new(@size, "_")}
        if size.odd?
            @size = size - 1
        else
            @size = size
        end
        @pairs_num = (@size ** 2) / 2
    end

    def [](pos)
        row, col = pos
        @grid[row][col]
    end

    def []=(pos, val)
        row, col = pos
        @grid[row][col] = val
    end

    def grid_random
        array = []
        2.times{array << rand(0...@size)}
        array
    end

    def valid?(pos)
        row, col = pos
        pos.all? do |i|
            0 <= i && i < @size
        end
    end

    def empty?(pos)
     row, col = pos
     self[pos] == "_"
 end

 def populate
     counter = 0 
     alphabet = []
    ("a".."z").each {|char| alphabet << char}

     until counter == @pairs_num
         pair = [] 
         until pair.length == 2
             pos = grid_random
             pair << pos if valid?(pos) && empty?(pos) && pair[0] != pos
         end
        temp = alphabet.sample.upcase
         pair.each { |pos| self[pos] = Card.new(face = temp) }
         counter += 1
     end
 end

    def print
        @grid.each do |row|
            row.each do |char|
                p char
            end
            puts
        end
    end
    

end








       
#         if valid?(pos) && empty?(pos)
#             @grid[pos] =  #card gets put here
#     end

#     Outside loop - stop when board is full
#     Inner loop - when we have a pair of locations


# We're going to intiialize a grid
# While that grid.lenth is less than 2, 
# we're going to get a random position, check if tis valid and empty, thens hovel it into the array
# Then when taht array is two, we're going to set our grid at those locations, equal to a new card

# # Count how many pairs we have placed so far
# # When that count is equal to num pairs, we're done
# Until that's the case, then we have another until, we need to get a position, 


