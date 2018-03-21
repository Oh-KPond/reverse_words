require 'pry'
# A method to reverse each word in a sentence, in place.
def reverse_words(my_words)
  return if my_words.nil?
  return my_words if my_words.length == 0 || my_words.length == 1

  index = 0
  while index < my_words.length
    pointer = index
    while my_words[pointer] != " " && my_words[pointer] != nil
      pointer += 1
    end

    if pointer != index
      start_point = index
      end_point = pointer - 1
      while start_point < end_point
        temp = my_words[start_point]
        my_words[start_point] = my_words[end_point]
        my_words[end_point] = temp
        start_point += 1
        end_point -= 1
      end
    end

    index = pointer + 1
  end
end
