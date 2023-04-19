str1=" Thiruvanthapuram "
str2="""
The present regions that constitute Thiruvananthapuram 
were ruled by the Ays who were feudatories of the Chera dynasty.
[14] In the 12th century, it was conquered by the Kingdom of Venad.[14]
 In the 18th century, the king Marthanda Varma expanded the territory, 
 founded the princely state of Travancore, and made Thiruvananthapuram its capital
 """
print(len(str2))
print(str1[5])
print(str1.upper())
print(str1.lower())
print(str1.isupper())
print(str2.count("Thiruvananthapuram"))
print(str2.split('[14]'))
print(str1.lstrip())
print(str1.replace("T","t"))
print(str2.find("e Thiruvanthapuram"))
