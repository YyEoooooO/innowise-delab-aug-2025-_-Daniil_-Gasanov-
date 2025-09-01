# Дано: words = ["hello", "world", "python", "code"]
# 1. Создать список длин слов, используя списковое включение
# 2. Создать список слов длиннее 4 символов
# 3. Создать словарь: {слово: длина} для всех слов

words = ["hello", "world", "python", "code"]

words_len = [len(str) for str in words]
print(words_len)

words_b4 = [str for str in words if len(str) > 4]
print(words_b4)

words_sl ={}

for str in words:
    words_sl[str] = len(str)
print(words_sl)
