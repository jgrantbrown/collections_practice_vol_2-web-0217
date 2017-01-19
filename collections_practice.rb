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
 #arrays.inject(Hash.new(0)) { |total, e| total[e] += 1 ;total}
 arrays.each_with_object(Hash.new(0)) { |g,h| h[g[:name]] += 1 }.
     map { |name, count| { :name=>name, :count=>count } }
     #http://ruby-doc.org/core-2.2.0/Hash.html#method-c-new
end

def merge_data(keys, data)
  merged_array=[]
  keys.each { |key|
    key.each { |keyname, name|
     merged_array.push(key.merge(data[0][name]))
    }
  }
  merged_array
end

def find_cool(array)
     new_array=[ ]
      array.map{|key|
      key.map{|k,v| puts new_array<<key if v=="cool"

      }
      }
      new_array
      end

def organize_schools(schools)
       where_school={ }
       nyc={}
       sf={}
       chx={}
       nyc_array=[]
       sf_array=[]
       chx_array=[]
       schools.map{|key,value|
         value.map{|k,v|
        if v=="NYC"
          nyc_array<<"#{key}"
          nyc="#{v}=>#{nyc_array}"
        elsif v=="SF"
          sf_array<<"#{key}"
          sf="#{v}=>#{sf_array}"
        else v=="Chicago"
          chx_array<<"#{key}"
          chx="#{v}=>#{chx_array}"
        end
      }
       }
      where_school=nyc,sf,chx
      end
