# Дано: email = " USER@DOMAIN.COM "
# 1. Очистить и отформатировать до вида: "user@domain.com"
# 2. Разделить на имя пользователя и домен
# 3. Используя f-строку, создать: "Username: user, Domain:
# domain.com"

email = " USER@DOMAIN.COM "

email = email.strip().lower()
print(email)

Username = ""
Domain = "" 

for char in email:
    if char == "@":
        Domain = email[email.find(char) + 1:]
        break

    Username += char

email_nor = f"name = {Username}, dom = {Domain}"

print(email_nor)
