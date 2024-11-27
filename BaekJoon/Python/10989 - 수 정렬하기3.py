import sys

n = int(input())

array = [0] * 10001

for _ in range(n):
    array[int(sys.stdin.readline())] += 1

for i in range(10001):
    for _ in range(array[i]):
        print(i)
