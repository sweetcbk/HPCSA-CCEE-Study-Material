'''
list1=set(["a","b","c","d"])
list2=set(["l","b","x","g"])
if list1&list2:
	print("true")
else:
	print("false")
'''
def overlapping():
	list1=set(["a","b","c","d"])
	list2=set(["l","f","x","g"])
	if list1&list2:
		print("True")
	else:
		print("False")
choice=0;
while choice!=2:
	print("1.check list")
	print("2.exit")
	choice=int(input("Enter choice"))
	if choice==1:
		overlapping()
	else:
		exit (0)
