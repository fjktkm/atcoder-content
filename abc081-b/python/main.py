from functools import reduce

length = int(input())
num_list = list(map(int, input().split()))

num_list_or = reduce(lambda x, y: x | y, num_list)

count = 0
while num_list_or % 2 == 0:
    count += 1
    num_list_or = num_list_or // 2

print(count)
