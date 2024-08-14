def substrings(string = "I'll have a one million beers", dictionary = ["lol","beer", "i", "i'll","have","one","on","million","lion","a",])
  collection = {}
  string.downcase.split(' ').map{ |word|
    dictionary.map { |definition|
    if word.include?(definition) == true
      unless collection[definition].nil? == true
        collection[definition] += 1
      else 
        collection[definition] = 1
      end 
    end
    }
  }
  p collection
end 

substrings()