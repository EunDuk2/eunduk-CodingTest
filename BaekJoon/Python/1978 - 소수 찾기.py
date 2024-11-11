n = int(input())

array = list(map(int, input().split()))

total_count = 0 # 총 소수의 개수

for value in array:
    count = 0
    # value 사이의 모든 수로 나눠 소수인지 판단
    for i in range(1, value+1):
        if value % i == 0:
            count += 1
        if count > 2:
            break # 소수 탈락 시 break
    if count == 2: # 소수라면 개수 up
        total_count += 1

print(total_count)
