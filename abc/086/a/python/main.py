def is_even(x):
    return x % 2 == 0

a, b = map(int, input().split())
output = "Even" if is_even(a) or is_even(b) else "Odd"
print(output)
