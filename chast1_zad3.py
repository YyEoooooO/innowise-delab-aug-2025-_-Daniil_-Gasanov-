# Исходный список: fruits = ["apple", "banana"]
# Выполните следующие операции по порядку:
# 1. Добавьте "orange" в конец списка
# 2. Вставьте "grape" по индексу 1
# 3. Удалите "banana"
# 4. Отсортируйте список
# 5. Переверните список
# Выводите список на печать после каждого шага

fruits = ["apple", "banana"]

fruits.append("orange")
print(f"1: {fruits}")

fruits.insert(1, "grape")
print(f"2: {fruits}")

fruits.remove("banana")
print(f"3: {fruits}")

fruits.sort()
print(f"4: {fruits}")

fruits.reverse()
print(f"5: {fruits}")