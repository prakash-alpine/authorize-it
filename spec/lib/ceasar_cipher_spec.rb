require 'rails_helper'
require 'ceasar_cipher'

RSpec.describe CeasarCipher do

  it 'correctly encodes and decodes a sentence with a shift of 3' do
    original_string = Faker::Lorem.sentence
    shift = 3
    encrypted_string = CeasarCipher.encrypt(original_string, shift)
    decrypted_string = CeasarCipher.decrypt(encrypted_string, shift)
    expect(decrypted_string).to eq (original_string)
  end

  it 'correctly encodes and decodes a multi-sentence paragraph with a shift of 58' do
    original_string = Faker::Lorem.paragraph(5)
    shift = 58
    encrypted_string = CeasarCipher.encrypt(original_string, shift)
    decrypted_string = CeasarCipher.decrypt(encrypted_string, shift)
    expect(decrypted_string).to eq (original_string)
  end

  it 'correctly encodes and decodes strings [A-Z][a-z][0-9]' do
    original_string = "How is it that all other DVD versions of movies that came
                       out around the same time (Sandlot/Heavyweights/Mighty Ducks) are all 4.99-6.99 but
                       LITTLE GIANTS is $55.09????? That is the most ridiculous thing I've ever heard. Still hoping it's a misprint or joke....
                       I want to buy this movie for my collection but NO WAY would I pay that. Get it together Amazon."
    shift = 36
    encrypted_string = CeasarCipher.encrypt(original_string, shift)
    decrypted_string = CeasarCipher.decrypt(encrypted_string, shift)
    expect(decrypted_string).to eq (original_string)

  end

  it "correctly encodes and decodes string containing special chars(!@#$%^&*()_+~`:;'<>?)\\/.,|}{[]=-" do
    original_string = "!@#$%^&*()_+~`:;'<>?)\\/.,|}{[]=-"
    shift = 87
    encrypted_string = CeasarCipher.encrypt(original_string, shift)
    decrypted_string = CeasarCipher.decrypt(encrypted_string, shift)
    expect(decrypted_string).to eq (original_string)

  end

  it 'correctly encodes and decodes multiline text' do

  end


end