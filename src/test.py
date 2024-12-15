array = [3, 5, -4, 8, 11, 1, -1, 6]
target_sum = 10

for i in array:
    if(i != len(array)):
        if(target_sum == array[i]+array[i+1]):
            print(f"Pair is {array[i],array[i+1]}")
