poem = "this is a longass line of words"
Poem = poem.split(" ")

i = 0
j = 0
while i<Poem.length do
      puts Poem[i]
      i+=1
end

puts " "
puts " "
puts " "

while j<Poem.length do
      puts Poem[j].chars
      j+=1
end