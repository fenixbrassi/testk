//Compare if two strings are same irrespective of case

def sort_keys_by_length( hash_param )
  hash_param.keys.map(&:to_s).sort_by{|x| x.length}
end
