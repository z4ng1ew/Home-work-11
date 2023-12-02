# Dockerfile
# Используем официальный образ Node.js в качестве базового образа
FROM node:14

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /usr/src/app

# Копируем файлы package.json и package-lock.json для установки зависимостей
COPY package*.json ./

# Устанавливаем зависимости
RUN npm install

# Копируем остальные файлы приложения
COPY . .

# Определяем порт, который будет использоваться в приложении
EXPOSE 3000

# Команда для запуска приложения при старте контейнера
CMD ["npm", "start"]