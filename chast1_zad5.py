#Дан список чисел nums и целевое число target. 
#Найти индексы двух чисел, сумма
#которых равна target.

def two_num_sum(nums, target):
    for i in range(len(nums)):

        for j in range(i + 1, len(nums)): 

            if nums[i] + nums[j] == target:
                return [i, j]  
            
    return None 

nums = [2, 7, 11, 15]
target = 9
result = two_num_sum(nums, target)
print(result)  # [0, 1]

'''
Короче тут просто перебором берём число из начала списка и слаживаем 
с остальными и проверяем, в функции для учёта случая когда нет таких чисел
'''
