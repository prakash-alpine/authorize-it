module CeasarCipher
# In cryptography, a Caesar cipher, also known as Caesar's cipher, the shift cipher,
# Caesar's code or Caesar shift, is one of the simplest and most widely known encryption techniques.
# It is a type of substitution cipher in which each letter in the plaintext is replaced by a
# letter some fixed number of positions down the alphabet. For example, with a left shift of 3,
# D would be replaced by A, E would become B, and so on. The method is named after
# Julius Caesar, who used it in his private correspondence.module CeaserCipher

  # Given a string or multiline text and a shift value between 1 to 127, encrypts the string using simple ceasar cipher algorithm
  def self.encrypt(data, shift)
    ret = ''
    if shift < 1 || shift > 127
      puts 'shift value must be between 1 and 127'
      return
    end
    data.each_byte do |c|
      #ret << ((((c-32) + shift) % 95) + 32).chr
      ret << ((c + shift) % 127).chr
    end
    ret
  end

  # Given an encrypted data and associates shift value, decrypts the string using simple ceasar cipher algorithm
  def self.decrypt(data, shift)
    ret = ''
    if shift < 1 || shift > 127
      puts 'shift value must be between 1 and 127'
      return
    end
    data.each_byte do |c|
      #ret << ((((c-32) - shift) % 95) + 32).chr
      ret << ((c - shift) % 127).chr
    end
    ret
  end

end
