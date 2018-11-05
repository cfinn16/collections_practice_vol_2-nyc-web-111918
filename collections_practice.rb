# your code goes here
require "pry"

def begins_with_r(tools)
  tools.all? {|s| s.start_with?("r")}
end

def contain_a(array)
  array.map do |element|
    if element.include?("a")
      element
    end
  end.compact
end

def first_wa(array)
  array.find {|s| s.to_s.start_with?("wa")}
end

def remove_non_strings(array)
  array.delete_if {|x| x.to_s != x}
end

def count_elements(array)
  array.group_by(&:itself).map do |key, value|
     key.merge({:count => value.length})
  end
end

def merge_data(keys, data)
   keys.each do |object|
    matchingProperty = object[:first_name]
    puts object
    otherObject = data[0][matchingProperty]
    
    otherObject.each do |property,value|
      object[property] = value
    end
  end
end

def find_cool(hash)
  hash.collect do |pair|
    if pair.value?("cool")
      pair
    end
  end.compact
end

def organize_schools(schools)
  new_hash = {}
  schools.map do |school, school_data|
    school_data.map do |k, v|
      if new_hash.key?(v) == false
       new_hash[v] = [school]
      else
        new_hash[v] << school
      end
    end
  end
  new_hash
end
