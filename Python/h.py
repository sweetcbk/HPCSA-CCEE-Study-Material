'''
def hello(greeting='Hello',name='World'):
	print("%s%s!"%(greeting,name))
print("Calling function")
hello()
hello("Welcome")
hello("come","here")
'''
'''
def hello1(greeting,name):
	print('%s%s!'%(greeting, name))
hello1(name=' world', greeting='Hello')
'''
'''
def prparm(x,y,z=3,*pr,**ke):
	print(x,y,z)
	print(pr)
	print(ke)
prparm(1,2,3,5,6,7,foo=1,bar=2)
prparm(1,2)
'''
def addition(a,b,*p):
	print(a+b+sum(p))
addition(10,20,30,40,50)

