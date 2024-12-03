# %%
#Sub strings
word = "Hitesh Dhamshaniya"
numWord = "0123456789"
print(word[0:-5])
print(numWord[-6:-2])
print(numWord[3:2]) #Need to understand why its not print from number 3 to 2
print(numWord[0:]) #will print whole string from given position to end of the string
print(numWord[2:])
print(numWord[3:])
print(numWord[-3:]) #if pass negative value its get string form the end 
print(numWord[-2:-3])


# %%
# To print out in multiple line use triple quote
print("""
This will show in mulitple line
Check this is 2nd line
Check this is 3rd line
""")

# %%
# work with list
square = [1, 4, 9, 16, 25]
qube = [1, 8, 27, 64]
print(square)
mergeTwoList = square + qube
print(f"Merge list is {mergeTwoList}")

mixList = [1, "one", 2,"Two", 3, "Three", 4, "Four"]
print(mixList) # print whole list
print(mixList[2]) # print element from the position 
print(mixList.remove(3)) # remove element from the list
print(mixList[-2]) # get element form reverse position 

print(mixList[0:-2]) #print element from start to list.size - 2


# %%
# Python simply not copy the data its refere 
colors = ["Red", "Green", "Blue", "Back"]
someColors = colors
isSame = id(colors) == id(someColors) # check both is same
print(isSame)
someColors += ["Brown"]
print(f"Check again is same {id(colors) == id(someColors)}")

# %%
#String operations a simple string is an array of character so we can get char from string by position
getCharFromPosition = "GetMyPosition By Pass position"
print(f'Get character at postion 5. 10 and 16 {getCharFromPosition[5]}, {getCharFromPosition[10], getCharFromPosition[16]}')
print(getCharFromPosition[16])

#what if we pass greater position then exist
python = 'Python'
#print(python[10])
#will get Index Error String index out of range

#if we want to get character form the end simple pass - (negative)
print(python[-3])

# %%
#3.1.2 Text
print('Text can be in single quote')
print("Text can be in display in double quote as well")
print('Number in quote is treated as a string like 1987')
print('This is how we can display quote don\'t to this')
print("If you don't want to used \\ you can used doble quote")
print('Hello, Itsn"\'t"')
print('Used Raw string add',r'C:\User\nHitesh')
print('Without Raw String')

print(f'**************\nInteresting Repead using *')

repeatMe = 3 * 'Welcome '
print(repeatMe)

# %%
# Loop
for number in range(9): print(number)

print("***** New Program *********")
for number in range(2, -10,-2):
    print(number)

platform = ["Android", "iOS","Flutter", "React Native"]
for name in platform:
    print(name)
else:
    print("All platform printted")

for name in platform: 
    if(name == 'Android'): print(name)
    # else: print("Not Good Mobile")
else:
    print("Gone through all")


