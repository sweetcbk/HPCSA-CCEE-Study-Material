
lst=[]
str1=input("Enter the string")
for ch in str1:
	if ch.isalnum():
		lst.append(key[ch])
	else:
		lst.append(ch)
str1="".join(lst)
print(str1)
