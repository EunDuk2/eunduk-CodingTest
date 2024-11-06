a = int(input())
b = int(input())

# 각 자리 수를 계산
b0 = b // 100
b1 = b % 100 // 10
b2 = b % 10

print(b2 * a, b1 * a, b0 * a, a * b) # 줄바꿈 안해도 상관 없음
