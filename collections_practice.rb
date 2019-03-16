require 'pry'
def begins_with_r(tools)
  tools.all? {|tool| tool.match(/^r/)}
end

def contain_a(array)
  array.select {|element| element.include? "a"}
end

def first_wa(array)
  array.find {|element| element.match(/^wa/)}
end

def remove_non_strings(array)
  array.reject {|element| !element.is_a? String}
end

def count_elements(array)
  array.each do |hash|
    hash[:count] = 0
    array.each do |new_hash|
      if new_hash[:name] == hash[:name]
        hash[:count] += 1
      end
    end
  end.uniq
end

def merge_data(arr1, arr2)
  new_array = []
  arr2.each do |data_hash|
    data_hash.each do |name, hash|
      arr1.each do |keys_hash|
        if keys_hash[:first_name] == name
          new_array << keys_hash.merge(hash)
        end
      end
    end
  end
  new_array
end

def find_cool(cool)
  new_array = []
  cool.each do |hash|
    if hash[:temperature] == "cool"
      new_array << hash
    end
  end
  new_array
end

def organize_schools(schools)
  schools.each do |school_name, location_hash|
    binding.pry
  end
end
