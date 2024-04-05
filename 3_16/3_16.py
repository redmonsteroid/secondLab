def check_date(num):
    days_in_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    day, month = 0, 0
    if num >= 11 and num <= 99:
        return True
    if num >= 101 and num <= 999:
        day = num // 10
        month = num % 10
        if days_in_month[month - 1] >= day:
            return True
        day = num // 100
        month = num % 100
        if days_in_month[month - 1] >= day:
            return True
    if num >= 1000 and num < 9999:
        day = num // 100
        month = num % 100
        if days_in_month[month - 1] >= day:
            return True
    return False

count = int(input())
numbers = []
for i in range(count):
    n = int(input())
    numbers.append(n)

for n in numbers:
    if check_date(n):
        print("Yes")
    else:
        print("No")
