n = int(input())

array = []

for i in range(n):
    word = input()
    array.append(word)

array = list(set(array))
array.sort(key=lambda word: (len(word), word))

for word in array:
    print(word)
