require "pry"
def alphabetize(arr)
  # code here
  esperanto_alphabet = " abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  arr.sort_by do |phrase|
    total =0.0
    phrase.chars.each_with_index do |character, index|
      total+=(esperanto_alphabet.index(character).to_f)/(10**(index+1)).to_f
    end
    total
  end
end
