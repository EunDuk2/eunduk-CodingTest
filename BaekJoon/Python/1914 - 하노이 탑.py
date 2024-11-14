n = int(input())

print(2 ** n -1)

def hanoi(k, 시작기둥, 목표기둥, 보조기둥):
    if k == 1:
        print(시작기둥, 목표기둥)
    else:
        hanoi(k-1, 시작기둥, 보조기둥, 목표기둥)
        print(시작기둥, 목표기둥)
        hanoi(k-1, 보조기둥, 목표기둥, 시작기둥)
    
if n < 21:
    hanoi(n, 1, 3, 2)
