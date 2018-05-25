require 'pry'

def alphabetize(arr)
  # code here
  esperanto = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz".chars
  arr.sort_by! do |word|
    word.chars.collect do |character|
      esperanto.index(character)
    end
  end
  arr
end