N = int(input())

for i in range(N):
        array = list(map(int, input().split()))
        n = array[0]
        array_score = array[1:]

        avg = sum(array_score) / n

        array_filter = list(filter(lambda score: score > avg, array_score))
        persent = len(array_filter) / n * 100
        print(f"{persent:.3f}%")
