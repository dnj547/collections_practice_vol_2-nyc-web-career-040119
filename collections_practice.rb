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
  arr1.each do |keys_hash|
    merged_hash = {}
    keys_hash.each do |key, value|
      merged_hash[key] = value
    end
    new_array << merged_hash
  end

  arr2.each do |data_hash|
    data_hash.each do |name, hash|

    end
  end

  arr2.each do |data_hash|
    data_hash.each do |name, hash3|
      if value1 == name
        hash3.each do |key3, value3|
          merged_hash[key3] = value3
        end
      end
    end
  end
  return merged_hash
end

def find_cool
end

def organize_schools
end
