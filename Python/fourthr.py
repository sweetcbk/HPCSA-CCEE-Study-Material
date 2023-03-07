lst=[]
string=input("enter the string")
string=string.lower()
for ch in string:
	if ch.isalnum():
		lst.append(ch)
lst_set=set(lst)
if(len(lst_set)==26):
	print( "given string is panagram")
else:
	print( "not a panagram")

