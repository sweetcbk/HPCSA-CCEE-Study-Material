lst=[]
string=input("Enter the string")
str1=string.lower()
for ch in str1:
	if ch.isalnum():
		lst.append(ch)
	else:
		pass
a=lst[::-1]
if lst==a:
	print("Palindrome")
else:
	print("Not palindrome")
