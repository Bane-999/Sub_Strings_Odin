def substrings(string, dictionary)

    string = string.downcase
    len = string.length
    hash = Hash.new(0)

    dictionary.each do |word|

        if (word.length <= len)
            for x in (0..(len - word.length)) do
                if (string[x,word.length] == word)
                    hash[word] += 1                    
                end
            end
        end

    end
    hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

#p substrings("below", dictionary)
# { "below" => 1, "low" => 1 }

p substrings("Howdy partner, sit down! How's it going?", dictionary)
# { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }

# ===================================================
# below = 5; 

# b = 1; 5
# go = 2; 4
# qwe = 3; 3
# qwer = 4; 2
# qwert = 5; 1
# qwerty = 6; 0