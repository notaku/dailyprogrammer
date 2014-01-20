# https://pay.reddit.com/r/dailyprogrammer/comments/pkw2m/2112012_challenge_3_easy/

print "Plaintext: "
plaintext = gets.chomp

if !(plaintext.nil? || plaintext.empty?)
  print "Cipher: Rot-"
  rot = gets.chomp.to_i

  if (rot >= 0)
    ciphertext = Array.new(0)
    
    plaintext.each_byte do |byte|
      if (byte >= 65 and byte <= 90)
        byte += rot
    
        until (byte >= 65 and byte <= 90)
          byte -= 26
        end
      elsif (byte >= 97 and byte <= 122)
        byte += rot
    
        until (byte >= 97 and byte <= 122)
          byte -= 26
        end 
      end
    
      ciphertext.push byte.chr
    end
    
    puts ciphertext.join
  else
    puts "\n [!!] Rotation can't be less than 0. Exiting"
    exit
  end
else
  puts "\n [!!] No plaintext entered. Exiting."
  exit
end

