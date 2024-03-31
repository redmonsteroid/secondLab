def count_num(nums):
    result = 0
    for num in nums:
        if num >= 100:  # проверка на количество цифр
            count = 0
            while num != 0:
                num //= 10
                count += 1
            if count % 2 != 0:
                result += 1
    return result

nums = []
print("Enter numbers using enter: (to end enter -1)")
while True:
    num = int(input())
    if num == -1:
        break
    nums.append(num)
print(count_num(nums))