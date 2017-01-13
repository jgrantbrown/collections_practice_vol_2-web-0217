# your code goes here
def begins_with_r(arrays)
arrays.map { |word| if "#{word[0]}" != "r"
return false
end
}
 else
   return true
 end

 def contain_a(arrays)
new_array=[]
arrays.map { |word|if (word.include? ("a"))
  new_array.push(word)
end
}
return new_array
end


# passed but need to improve for if wa is in middle of word?
def first_wa(arrays)
arrays.find_index { |word| if (word.to_s.include? ("wa"))
  return word
  break
end
}
end

def remove_non_strings(arrays)
 new_array=[]
 arrays.collect! { |word| if (word.class==="String")
new_array.push(word)
 end
}
return new_array
end

def count_elements(arrays)
 arrays.inject(Hash.new(0)) { |total, e| total[e] += 1 ;total}
end
