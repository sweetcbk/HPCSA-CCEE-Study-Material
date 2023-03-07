'''
movieinfo={'bahubali':'prabhas','dhamal':'akshay'}
mname=input("enter movie name")
hero=movieinfo.get(mname,1)
if hero!=1:
	hero1=input ("enter name of the heroen")
	movieinfo[mname]=hero1
	print("movie exist")
else:
	h=input("enter hero")
	movieinfo[mname]=h
	
print(movieinfo)
hero=input("enter the hero")
for m in movieinfo.keys():
	if movieinfo[m]==hero:
		print(m)
		break
else:
	print("hero not found")	
'''
movieinfo={}
def addmovie():
	mname=input("enter the movie name")
	val=movieinfo.get(mname,1)
	if val!=1:
		print("movie exist")
	else:
		alist=[]
		ans='y'
		while ans!='n':		
			actor=input("enter actor")
			alist.append(actor)
			ans=input("continue(y/n)?")
		movieinfo[mname]=alist
def display():
	mname=input("enter movie name")
	print(mname,"--->",movieinfo[mname])
def findbyactor():
	actor=input("enter actor")
	flag=1
	for i in movieinfo.keys():
		alist=movieinfo[i]
		if actor in alist:
			flag=0
			print(i)
	if flag==1:
		print(actor,"not found")
def deletemovie():
	mname=input("enter movie name")	
	val=movieinfo.get(mname,1)
	if val!=1:
		ans=input("delete(y/n)")
		if ans=="y":
			del(movieinfo[mname])
			print("deleted sucessfully",mname)
		else:
			print("not deleted")
	else:
		print("movie not found")
			
def deleteactor():
	actor=input("enter actor")
	flag=1
	for i in movieinfo.keys():
		alist=movieinfo[i]
		if actor in alist:
			flag=0
			alist.remove(actor)
			print("actor deleted from movie",i)
	if flag==1:
		print("actor not found")
choice=0
while choice!=7:
	print("1.Add new movie")
	print("2.print movie name and list of anchors")
	print("3.display all movie of given anchor")
	print("4.delete movie")
	print("5.delete anchor")
	print("6.displayall")
	print("7.exit")
	choice=int(input("enter choice"))
	if choice==1:
        	addmovie()
	elif choice==2:
        	display()
	elif choice==3:
        	findbyactor()
	elif choice==4:
        	deletemovie()
	elif choice==5:
        	deleteactor()
	elif choice==6:
		for i in movieinfo.keys():
			print(i,"-->",movieinfo[i])
	else:
		exit(0)
