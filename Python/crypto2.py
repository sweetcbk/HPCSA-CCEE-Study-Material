number=int(input("enter the ROT value"))
dict={}
num1=number+65
for i in range(0,26):
	i=65+i
	if i>=num1:
		j=(i+num1)-number
		print(j)
		dict[chr(i)]=chr(j)
	else:
		k=i+number
		dict[chr(i)]=chr(k)
print(dict)
