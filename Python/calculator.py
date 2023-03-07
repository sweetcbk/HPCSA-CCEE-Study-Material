loop = 1

choice = 0

while loop == 1:
   
	print ("Welcome to calculator")

	print ("your options are:")
	print (" ")
	print ("1) Addition")
	print ("2) Subtraction")

	print ("3) Multiplication")

	print ("4) Division")
	print ("5) Quit calculator.py")
	print (" ")

	choice =int(input("choose your option: "))
	try:
		if choice == 1:
			add1 = int(input("add this: "))
			add2= int(input("to this: "))
			c=add1+add2
			print ("addition=",c)
		elif choice == 2:
			sub1 = int(input("Subtract this "))
			sub2 = int(input("from this"))
			print (sub1, "-", sub2, "=", sub1 - sub2)
		elif choice == 3:
			mul1 = int(input("Multiply this: "))
			mul2 = int(input("with this: "))
			print (mul1, "x", mul2, "=", mul1 * mul2)
		elif choice == 4:
			div1 = int(input("Divide this: "))
			div2 = int(input("by this: "))
			if div2 == 0:
				print ("Error! Cannot divide by zero!  You'll destroy the universe! ;")
			else:
				print (div1, "/", div2, "=", div1 / div2)
		elif choice == 5:
			loop = 0
		else:
			print ("%d is not valid input. Please enter 1, 2 ,3 ,4 or 5." %choice)

	except ValueError:
		print ("%r is not valid input.  Please enter 1, 2, 3, 4 or 5." %choice)
	print ("Thank you for using calculator!")

