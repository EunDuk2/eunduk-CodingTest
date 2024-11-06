a = int(input()) # 테스트 케이스 받아오기

ox_list = []

# 각 테스트를 가져와 배열에 추
for _ in range(a):
        ox_list.append(input())

# 2중 반복문 돌리고
for ox in ox_list:
        total_score = 0 # 전체 스코어
        game_score = 0 # 연속되는 문자에 따른 점수
        for ch in ox:
                if ch == "X": # X가 나오면 연속 스코어 초기화
                        game_score = 0
                else: # 아니라면 연속 스코어에 1점을 더하고 최종 스코어에 추가
                        game_score += 1
                        total_score += game_score
        print(total_score)
