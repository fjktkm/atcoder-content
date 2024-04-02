def digit_sum(n):
    return sum(int(d) for d in str(n))


range_max, digit_sum_min, digit_sum_max = map(int, input().split())

sum = sum(
    x for x in range(1, range_max + 1) if digit_sum_min <= digit_sum(x) <= digit_sum_max
)

print(sum)
