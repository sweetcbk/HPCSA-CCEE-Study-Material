number=int(input("enter the ROT value"))
dict={}
for i in range(26):
	i=i+65
	dict[chr(i)]=chr(i+(number%(65+number)))
print(dict)
