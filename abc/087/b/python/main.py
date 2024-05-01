coin500 = int(input())
coin100 = int(input())
coin50 = int(input())
total = int(input())

count = 0
for i in range(coin500 + 1):
    for j in range(coin100 + 1):
        for k in range(coin50 + 1):
            if i * 500 + j * 100 + k * 50 == total:
                count += 1
print(count)
