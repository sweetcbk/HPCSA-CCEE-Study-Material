def histogram(a):
	for i in a:
		print("*"*i)
n=int(input("enter the number of integers"))
i=1
b=[]
while(i<=n):
	d=int(input())
	b.append(d)
	i=i+1
histogram(b)			
