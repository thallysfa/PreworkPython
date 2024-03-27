def palindromo(word):
  return word == word[::-1]
  
word = input("Escriba una palabra: ")
if palindromo(word):
  print(f"La palabra {word} es un palindromo")
else:
  print(f"La palabra {word} no es un palindromo")