//Compare if two strings are same irrespective of case

def str_cmp( word1 , word2 )
  return false if !word1.is_a? String
  return false if !word2.is_a? String
  return word1.upcase == word2.upcase
end
