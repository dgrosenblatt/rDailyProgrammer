# Daily Programmer 103: Text Transformations
# http://www.reddit.com/r/dailyprogrammer/comments/11erhd/10132012_challenge_103_easydifficult_text/

from random import randint

word_raw = raw_input("What to translate?") 

word = list(word_raw.lower())

leet = {'a': '@', 'b': '|3', 'c':'[', 'd':'|)', 'e': '3', 'f': '|=', 'g': 'C-',
      'h': '|-|', 'i': '!', 'j': '_|', 'k': '|<', 'l': '1', 'm': '|\/|',
      'n': '|\|', 'o': '()', 'p': '|o', 'q': '(,)', 'r': '|2', 's': '5',
      't': '7', 'u': '|_|', 'v': '\/', 'w': 'vv', 'x': '><', 'y': '`/',
      'z': '7_'} 



word_list = []

for i in word: 
    if randint(0, 3) <= 1: 
        word_list.append(leet[i]) 
    else:
        word_list.append(i) 

result = ''.join(word_list)

print result 