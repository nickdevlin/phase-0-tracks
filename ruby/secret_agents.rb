#Pseudocode for Release 2:
#create a method that encrypts or decrypts a string.
#method receives string as a paramater.
#loops through given string and compares to index in alphabet
#converts the string into array and saves it 
#outputs final encryption or decryption

def encrypt(string)
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    i = 0 
    array = []
    value = ''
    length = string.length
        while i < length 
        a = string[i].to_s
        value = alphabet.index(a)
        if value == 25
             array.push(alphabet[0])
        else array.push(alphabet[value+1])
        end
        i += 1
    end
    p array.join
end

def decrypt(string)
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    i = 0 
    array = []
    value = ''
    length = string.length
        while i < length 
        a = string[i].to_s
        value = alphabet.index(a)
        if value == 0
            array.push(alphabet[25])
        else array.push(alphabet[value-1])
        end
        i += 1
    end
    p array.join
end


encrypt("abc") should return "bcd"
encrypt("zed") should return "afe"
decrypt("bcd") should return "abc"
decrypt("afe") should return "zed"

encrypt(decrypt("swordfish"))

#Pseudocode for Release 5:
#asks "Would you like to encrypt or decrypt the password?"
#define if/then conditions for methods
#asks "What's the password?"
#receives password
#inserts password into chosen method, prints result

puts "Would you like to decrypt or encrypt a password? (d/e)"
answer = gets.chomp
puts "what's the password?"
password = gets.chomp
if answer == 'd'
    decrypt(password)
else encrypt(password)
end