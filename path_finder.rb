rot_camera_deg =[0.0,22.5,45.0,67.5,90.0,112.5,135.0,157.5,180.0,202.5,225.0,247.5,270.0,292.5,315.0,337.5]

w = 0
while w < rot_camera_deg.length
  rot_camera_deg[w] = rot_camera_deg[w].to_s
  w += 1
end

hex =["0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F"]


alphabet=["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
hex_comb =['41','42','43','44','45','46','47','48','49','4A','4B','4C','4D','4E','4F',
              '50','51','52','53','54','55','56','57','58','59','5A','5B']

puts
puts "Remember the movie 'The Martian'?"
puts "Imagine you are the astronaut Mark Watney surviving in Mart, and you are trying to send a signal back to Earth"
puts "from the PathFinder. The Pathnfider has a camera that rotates 360 degrees."
puts "Since the alphabet contains too many letters, it does not leave room for each of the English lettters in a circle."
puts "Therefore, you decide to use the Hexadecimal system, comprised of 16 symbols (0-9, and A-F)"
puts "You divide the 360 degree circle in 16 units apart"
puts "The problem is that you can only send two-letters word per message"
puts
print "alphabet | Hex_Combination        ||        Hexadecimal  |  Camera rotation\n"

i = 0
while i < 16

  print "   #{alphabet[i]}     |         #{hex_comb[i]}             ||             #{hex[i]}       |     #{rot_camera_deg[i]}\n"
  i+=1
end

while i < 26
 print "   #{alphabet[i]}     |         #{hex_comb[i]}\n"
   i+=1
 end
puts


                                    #4.times do |x|
                                    #puts "Please enter your four angles:"
                                    #rot2 << gets.chomp
                                    #end
puts "*"*90
puts "From the 'Camera rotation' column above, you need to enter 4 values. Let's start."
puts "*"*50
rot2 = []


print "Enter the first angle with one decimal place: "
answer = gets.chomp
until rot_camera_deg.include? answer
  print "Enter a valid angle from the table above with one decimal place:"
  answer = gets.chomp
end
 rot2 << answer

print "Enter the second angle with decimal place: "
answer = gets.chomp
until rot_camera_deg.include? answer
  print "Enter a valid angle from the table above with one decimal place: "
  answer = gets.chomp
end
 rot2 << answer

print "Enter the third angle with place: "
answer = gets.chomp
until rot_camera_deg.include? answer
  print "Enter a valid angle from the table above with one decimal place: "
  answer = gets.chomp
end
 rot2 << answer

print "Enter the forth angle with one decimal place: "
answer = gets.chomp
until rot_camera_deg.include? answer
  print "Enter a valid angle from the table above with one decimal place: "
  answer = gets.chomp
end
 rot2 << answer

deg1 = rot2[0]
deg2 = rot2[1]
deg3 = rot2[2]
deg4 = rot2[3]
puts "*"*50


hexal1 = rot_camera_deg.index(deg1)
 hex[hexal1]

hexal2 = rot_camera_deg.index(deg2)
 hex[hexal2]

hexal3 = rot_camera_deg.index(deg3)
 hex[hexal3]

hexal4 = rot_camera_deg.index(deg4)
 hex[hexal4]

combo1 = (hex[hexal1] + hex[hexal2]).to_s
combo2 = (hex[hexal3] + hex[hexal4]).to_s

puts
puts "Your Hexadecimal charcaters are: #{combo1} and #{combo2}"



alpa1 = hex_comb.index(combo1)

alpa2 = hex_comb.index(combo2)


if (hex_comb.include? combo1) && (hex_comb.include? combo2)
  puts "Your message was received"
  puts "YOUR ENGLISH LETTERS ARE: #{alphabet[alpa1]}#{alphabet[alpa2]} "
  puts
else
 puts "WE COULD NOT UNDERSTAND YOUR MESSAGE!"
 puts
end
puts "*"*50
