#● Создайте функцию calculate_average_score(), которая будет вычислять
#средний балл.
#● Функция должна принимать список оценок scores как обязательный аргумент.
#● Добавьте опциональный булевый параметр ignore_lowest со значением по
#умолчанию False.
#● Если ignore_lowest равен True, функция должна отбросить наименьшую оценку
#перед вычислением среднего. Если в списке всего одна оценка, отбрасывать её не
#нужно.
#Python
#● Используя цикл, пройдитесь по списку student_data. 2 раза, первый раз
#учитывая все оценки, а второй раз отбросив худшие оценки

def calculate_average_score(scores,  ignore_lowest = False):
    if ignore_lowest:
        if len(scores) == 1:
            return scores[0]
        else:
            scores.remove(min(scores))

    return sum(scores) / len(scores)


student_data = [
{'name': 'Алексей', 'scores': [85, 92, 78, 95]},
{'name': 'Марина', 'scores': [65, 70, 58, 82]},
{'name': 'Светлана', 'scores': [98, 95, 100]}
]

print("Не откидывая минимальное число:")
for i in student_data:
    print(f"name = {i['name']}, avg = {calculate_average_score(i['scores'])}")

print("Откидывая минимальное число:")
for i in student_data:
    print(f"name = {i['name']}, avg = {calculate_average_score(i['scores'], True)}")
