require "pry"
def alphabetize(arr)
  # code here
  # ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
alphabet_list_array = []
array_hash = {}
"abcĉdefgĝhĥijĵklmnoprsŝtuŭvz".each_char {|x| alphabet_list_array.push(x)}

  arr.each do |element|
    #take each elements string and replace it with the index of the alphabet_list_array then i create a number value word to be sorted by the .sort methmod put them into a hash with the keys as element and value = numaric value based on alphabet
    temp_element = []
    element_array = element.chars
    element_array.each do |char|
      temp_element.push(alphabet_list_array.index(char))
    end
    array_hash[element] = temp_element
  end

  sorted_array_hash = array_hash.sort_by{|key,value| value}
final_sorted_array = []
  sorted_array_hash.each do |element|
    final_sorted_array.push(element[0])
  end
final_sorted_array

end
