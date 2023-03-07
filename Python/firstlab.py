def fact(a):
	return 1 if (a==1 or a==0) else a*fact(a - 1)
n=1
while(n<=10):
	print("factorial of",n,"is :",fact(n))
	n=n+1
