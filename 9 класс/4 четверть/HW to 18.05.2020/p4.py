st = 'System Of A Down'
subs = "Of"


def main(s, su):
    for i in range(len(s) - len(su) + 1):
        if s[i:(i + len(su))] == su:
            return i
    else:
        return "There's no substring"


print(main(st, subs))
