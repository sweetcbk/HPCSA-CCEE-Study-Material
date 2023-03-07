import math
def min(x,y):
	if x<y:
		return x
	else:
		return y

choice=0
while choice!=4:
	print("1.Addition")
	print("2.Subtraction")
	print("3.Minimum")
	print("4.Exit")
	choice=int(input("choice:"))
	if choice==1:
		a=int(input("Enter number"))
		b=int(input("Enter number"))
		print ("Addition:"+str(a+b))
	elif choice==2:
		a=int(input("Enter number"))
		b=int(input("Enter number"))
		print("Subtraction:",(a-b))
	elif choice==3:
		a=int(input("Enter number"))
		b=int(input("Enter number"))
		c=min(a,b)
		print(str(c)+" is minimum")
#		if a<b:
#			print("a is minimum")
#		else:
#			print("b is minimum")
	elif choice==4:
		exit(0)
	else:
		print("Wrong Choice")
