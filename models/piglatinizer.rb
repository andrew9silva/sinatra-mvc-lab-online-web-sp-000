class PigLatinizer
  
  def piglatinize_word(word)
    
    first_letter_array = ["a", "e", "i", "o", "u"]
    first_letter = word[0].downcase
    
    if first_letter_array.include?(first_letter)
      "#{word}way"
<<<<<<< HEAD
=======
      binding.pry
>>>>>>> e35cf54e4aa1f2c4f2444e069362b0404b1f67a1
    else
      consonants = []
      if !first_letter_array.include?(word[0]) && !first_letter_array.include?(word[1]) && !first_letter_array.include?(word[2]) 
        consonants << word[0]
        consonants << word[1]
        consonants << word[2]
        word = word.slice!(3..-1) + word[0..2] + "ay"
      elsif !first_letter_array.include?(word[0]) && !first_letter_array.include?(word[1])
        consonants << word[0]
        consonants << word[1]
        word = word.slice!(2..-1) + word[0..1] + "ay"
      elsif !first_letter_array.include?(word[0])
        consonants << word[0]
        word = word.slice!(1..-1) + word[0] + "ay"
      end
    end
<<<<<<< HEAD
  end 
  
  def piglatinize_sentence(sentence)
    array = sentence.split(" ")
    new_array = array.map { |x| piglatinize_word(x) }
    new_array.join(" ")
  end
  
  def piglatinize(input)
    if input.length > 1
      piglatinize_sentence(input)
    else
      piglatinize_word(input)
    end
=======
    #word
>>>>>>> e35cf54e4aa1f2c4f2444e069362b0404b1f67a1
  end 

end