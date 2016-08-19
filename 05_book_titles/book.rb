class Book

  def title= book_name
    @title = book_name
    title
  end

  def title
    words = @title.split(' ')
    capitalwords=[]
    littlewords = ['a', 'the', 'and', 'over', 'in', 'of', 'an']
    words.each do |word|
      if littlewords.include?(word)
        if capitalwords.length == 0
          capitalwords.push word.capitalize
        else
          capitalwords.push word
        end
      else
        capitalwords.push word.capitalize
      end
    end
    @title = capitalwords.join(' ')
  end

end
