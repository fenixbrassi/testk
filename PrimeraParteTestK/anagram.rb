//Compare if two strings are anagrams (assume input consists of ASCII
//alphabets only)

def str_anagram( word1 , word2 )
  return false if !word1.is_a? String
  return false if !word2.is_a? String
  word1 = word1.upcase.split('')
  word2 = word2.upcase.split('')

  word1.each do |letter|
    index_letter =  word2.index(letter)
    if index_letter
      word2.delete_at(index_letter)
    else
      return false
    end
  end
  if word2.count == 0
    return true
  else
    return false
  end
end
