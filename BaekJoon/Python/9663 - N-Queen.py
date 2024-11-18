# row, column => r, c

def n_queen(c): # 한 번의 함수 진행이 행

    global n, cnt

    if c == n:
        cnt += 1
        return

    # 열 체크
    for r in range(n):
        if is_col[r] and is_plus_diagonal[c+r] and is_minus_diagonal[(n-1) + (c-r)]:
            is_col[r] = False
            is_plus_diagonal[c+r] = False
            is_minus_diagonal[(n-1) + (c-r)] = False
            n_queen(c+1)
            is_col[r] = True
            is_plus_diagonal[c+r] = True
            is_minus_diagonal[(n-1) + (c-r)] = True


n = int(input())

# 가능한 경우의 수
cnt = 0

# 열 체크 배열
is_col = [True] * n
# + 대각선 체크 배열
is_plus_diagonal = [True] * (2 * (n-1) + 1)
# - 대각선 체크 배열
is_minus_diagonal = [True] * (2 * (n-1) + 1)

n_queen(0)
print(cnt)
