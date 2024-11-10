import math

A, B, V = map(int, input().split())

V = V - B

day = math.ceil(V / (A - B))

print(day)
