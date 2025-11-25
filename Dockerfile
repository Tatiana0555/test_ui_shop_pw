FROM python:3.11-slim-bullseye

# 1. Устанавливаем системные зависимости для Playwright
RUN apt-get update && apt-get install -y \
    wget \
    gnupg \
    libnss3 \
    libnspr4 \
    libatk1.0-0 \
    libatk-bridge2.0-0 \
    libcups2 \
    libdrm2 \
    libxkbcommon0 \
    libxcomposite1 \
    libxdamage1 \
    libxfixes3 \
    libxrandr2 \
    libgbm1 \
    libasound2 \
    libpango-1.0-0 \
    libgtk-3-0 \
    libgdk-pixbuf-2.0-0 \
    libx11-xcb1 \
    libxss1 \
    libdbus-1-3 \
    libgconf-2-4 \
    libatspi2.0-0 \
    libwayland-client0 \
    xvfb \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# 2. Директория приложения
WORKDIR /app

# 3. Копируем зависимости
COPY requirements.txt .

# 4. Устанавливаем Python-зависимости
RUN pip install --no-cache-dir -r requirements.txt

# 5. Устанавливаем Playwright и браузеры
RUN playwright install

# 6. Копируем проект
COPY . .

# 7. Команда по умолчанию (запуск тестов)
CMD ["pytest", "-v"]
