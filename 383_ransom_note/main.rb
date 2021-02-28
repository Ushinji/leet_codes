# frozen_string_literal: true

# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
  hash = Hash.new(0)
  magazine.chars.each { |c| hash[c] += 1 }

  ransom_note.chars.each do |c|
    return false if hash[c].zero?

    hash[c] -= 1
  end
  true
end
