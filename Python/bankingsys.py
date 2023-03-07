def addAccount():
	di=int(input("Create an account no:"))
	#nn=input("Enter account holder name: ")
	em=int(input("Enter email id:"))
	mob=int(input("Enter mobile no:"))
	ch=0
	while ch!=2:
		print("To open current account or savingsaccount")
	if ch==1:
		print("current account created sucessfully")
	else:
		print("Saving account created")

choice=0
while choice!=7:
	print("1.Add new account")
	print("2.Delete an existing account")
	print("3.Record a deposit")
	print("4.Record a withdrawal")
	print("5.Record a transfer")
	print("6.Check balance of an account added")
	print("7.Exit")
	choice=int(input("entered choice is "))
	if choice==1:
		addAccount()
	elif choice==2:
		pass
	elif choice==3:
		pass
	elif choice==4:
		pass
	elif choice==5:
		pass
	elif choice==6:
		pass
	elif choice==7:
		exit(0)
	else:
		print("Wrong Choice")
