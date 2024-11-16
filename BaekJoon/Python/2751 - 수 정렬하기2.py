import sys

n = int(input())

array = []

for _ in range(n):
    array.append(int(sys.stdin.readline().rstrip()))

array.sort()

for num in array:
    print(num)
