number = 1
count = 0
while number <= 100:
  if number % 2 == 0:
    count += number
  number += 1

print (f"El total de los numeros pares es: {count}.")