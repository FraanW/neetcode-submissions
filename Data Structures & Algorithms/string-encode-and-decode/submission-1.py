class Solution:

    def encode(self, strs: List[str]) -> str:
        result = [] # -> ['5#Hello', '5#World']

        for word in strs: 
            result.append(str(len(word)) + '#' + word) # for ex. word is Hello then '5#Hello'
        
        return "".join(result) # -> 5#Hello5#World 
            

    def decode(self, s: str) -> List[str]:
        result = []

        i = 0

        while i<len(s):

            j = i # j is for the current word

            while s[j] != '#': # try to capture the number of letters in the word
                j += 1

            length = int(s[i:j]) # we convert the len of the word into integer

            word = s[j+1 : j+1+length] # read from the j+1 till the no. of chars, i.e. length

            result.append(word)

            i = j+1+length # we go on to the next word.
                    
        return result
            
        
