vowels = ['a','e','i','o','u']
wordUser = input("Escriba una palabra: ")
i = 0
for letter in wordUser:
  if letter in vowels:
    i +=1
print(f"La palabra {wordUser}, tiene {i} vocales.")