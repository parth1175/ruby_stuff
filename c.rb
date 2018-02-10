
class Cypher

  #This is the constructr=or
  def initialize(text="this is a longass sentence of words")
    @text = text
  end

  def get_text
    return @text
  end

end







# set space equal to !!!
# for any character under 32 (or equal to), just double it






# This is how to create an object
c = Cypher.new

a = c.get_text
words = a.split(" ")
puts ""
puts " "
print words
puts " "
puts " "
le = words.length - 1
temp = a.split(" ")


# This segment prints everything in binary reversed

for i in 0..le
  temp[i] = temp[i].bytes
  ge = temp[i].length - 1
  for j in 0..ge
    temp[i][j] = temp[i][j].to_i.to_s(2).reverse
  end
end

print temp





puts ""
puts ""








# This prints everything after coded

for i in 0..le
    bytes_array = words[i].bytes
    # for the first word in words, turn it into a byte array and store it in bytes_array
    long = words[i].length - 1
    # This is for the index of the first word
    for k in 0..long
    	# This says that for each k in words[i]
      binary_int_val = bytes_array[k].to_i
      # this is the binary value of the first letter of the first word
      binary_reversed = binary_int_val.to_s(2).reverse
      # This is the reversed binary string
      reversed_binary_val = binary_reversed.to_i(2)
      # this is the value of the reversed binary string
      if reversed_binary_val <= 32
        words[i][k] = (words[i][k])*2
      else
        words[i][k] = reversed_binary_val.chr
      end

    end
end
print words

















puts " "
puts " "





# This attempts to decode the code

le = words.length - 1
for i in 0..le

    long  = words[i].length - 1
    for k in 0..long
    	# This says that for each k in words[i]
	     words[i][k] = words[i][k].ord.to_s(2).reverse
       words[i][k] = words[i][k].to_i(2).chr
    end
end

print words
puts " "
puts " "

=begin
        instructions

 - convert the ASCII characters to binary
 - reverse the binary
 - convert binary to ASCII
 - spit it out


 to go from ASCII to integer
 - .ord

to go from integer to binary
 - .to_s(2)





=end
