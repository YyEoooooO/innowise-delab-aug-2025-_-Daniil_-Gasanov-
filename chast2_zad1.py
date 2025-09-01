# Создайте функцию без параметров show_current_time() — печатает
#текущие дату и время (используйте модуль datetime).

from datetime import datetime

def show_current_time():
    current_time = datetime.now()
    print(f"Текущие дата и время: {current_time}")

show_current_time()
