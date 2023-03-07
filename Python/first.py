mon=int(input("enter the number of days in the month"))
day=int(input("what day of week the month begin 0 for monday,1 for tuesday......6 for sunday"))
b=0
count=0
print("M  T  W  T  F  S  S")
while(b<day):
	print(" ",end="  ")
	b=b+1
	count=count+1	
i=0
for i in range(1,mon+1):
	if count%7==0:
		print("\n")
	if i<=9:
		print(i,end="  ")
	else:
		print(i,end=" ")
	count=count+1
print("\n")
