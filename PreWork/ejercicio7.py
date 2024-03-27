def suma(a,b):
  return a + b
def resta(a,b):
  return a - b
def multi(a,b):
  return a * b
def division(a,b):
  if b == 0:
    print("No se puede dividir por Zero")
    return None
  return a / b

while True:
  print("1- suma")
  print("2- resta")
  print("3- multi")
  print("4- division")
  opcion = int(input("Seleccione una opcion:"))
  if opcion not in range(1,4):
    print("Opcion no valida.")
    continue

num1 = init(input("Ingrese el primer numero: "))
num2 = init(input("Ingrese el segundo numero: "))

total = None
if opcion == 1:
  total = suma(num1,num2)
elif opcion == 2:
  total = resta(num1,num2)
elif opcion == 3:
  total = multi(num1,num2)
elif opcion == 4:
  total = division(num1,num2)
  
if total != None:
  print(f"El resultado es {total}")