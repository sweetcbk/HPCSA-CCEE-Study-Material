def addname():
	print("1.add at the end")
	print("2.add at given position")
	ch=int(input("Enter choice"))
	if ch==1:
		nm=input("enter name")
		lst.append(nm)
	else:
		pos=int(input("enter the position"))
		nm=input("enter name")
		lst.insert(pos,nm)
		print ("display sucessfully at",pos,"position")
def namecountoccurance():
	nm=input("enter name")
	c=lst.count(nm)
	if c==0:
		print("name does not exist")
	else:
		print(nm,"occurs",c,"times")

def deletebyname(nm):
	if nm in lst:
		lst.remove(nm)
		print(nm,"removed sucessfully")
	else:
		print("name found")
def deletebyposition():
	print("1.delete from end")
	print("2.delete from given position")
	ch=int(input("enter choice"))
	if ch==1:
		name=lst.pop()
		print(name,"deleted sucessfully")
	else:
		pos=int(input("enter position"))
		if pos < len(lst):
			lst.pop(pos)
		else:
			print("position",pos,"out of bound")

def ifexist():
	
	name=input("enter the name to search")
	if name in lst:
		print("name exist")
	else:
		print("name not found")
	
lst=[]
choice=0;
while choice!=6:
	print("1.add new user")
	print("2.accept a name and count occurance ")
	print("3.delete a name")
	print("4.delete from given position")
	print("5.check weather name exist")
	print("6.display all")
	print("7.exit")
	choice=int(input("Enter choice"))
	if choice==1:
		addname()
	elif choice==2:
 		passnamecountoccurance()
	elif choice==3:
		nm=input("enter name")
		deletebyname(nm)
	elif choice==4:
		deletebyposition()
	elif choice==5:
       		ifexist()
	elif choice==6:
        	print (lst)
	else:
		exit (0)
