def check_char(s):
    glasLet = "aeiouyAEIOUY"
    soglasLet = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"
    glasCount = 0
    soglasCount = 0
    for ch in s:
        if ch in glasLet:
            glasCount += 1
        elif ch in soglasLet:
            soglasCount += 1
    if glasCount > soglasCount:
        return "Да"
    elif glasCount < soglasCount:
        return "Нет"
    else:
        return "Одинаково"
s=input("Enter your string: ")
print(check_char(s))