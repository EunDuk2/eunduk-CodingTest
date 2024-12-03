import itertools

array = []

for _ in range(9):
    array.append(int(input()))

for c in itertools.combinations(array, 7):
    if sum(c) == 100:
        for i in sorted(c):
            print(i)
        break
