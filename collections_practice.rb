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
  arr2.each do |data_hash|
    data_hash.each do |name, hash|
      hash.each do |key1, value1|
        arr1.each do |keys_hash|
          keys_hash.clone.each do |key2, value2|
            if value2 == name
              keys_hash[key1] = value1
            end
          end
        end
      end
    end
  end
  return keys_hash
end

def find_cool
end

def organize_schools
end
