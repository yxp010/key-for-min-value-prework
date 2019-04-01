# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  smallest_value = Integer.new
  smallest_key = :symbol
  name_hash.each do |key, value|
    smallest_value = value if smallest_value == nil
    smallest_value = value if value < smallest_value
  end

  name_hash.each do |key, value|
    if value == smallest_value
      smallest_key = key
      break
    end
  end

  smallest_key

end
