# UI tests for E-commerce shop (Playwright + Pytest)

Набор UI-тестов, реализованных с использованием Playwright, Pytest и Page Object Model.  
Поддерживаются локальный запуск, Docker-контейнер, генерация Allure-отчётов.

---

## 📂 Структура проекта

```
test_ui_shop_pw/
│
├── pages/
│   ├── locators/
│   │   ├── cart_locators.py
│   │   ├── category_locators.py
│   │   └── product_locators.py
│   ├── base_page.py
│   ├── product_page.py
│   ├── cart_page.py
│   └── desks_page.py
│
├── tests/
│   ├── test_cart.py
│   ├── test_category_desks.py
│   └── test_product.py
│
├── conftest.py
├── requirements.txt
├── pytest.ini
├── Dockerfile
└── README.md
```

## 🚀 Установка и запуск локально

### 1. Клонировать репозиторий
```git clone https://github.com/Tatiana0555/test_ui_shop_pw.git```

```cd test_ui_shop_pw```

### 2. Создать виртуальное окружение
```python -m venv venv```

```venv\Scripts\activate```     # Windows

```# source venv/bin/activate```   # Linux/Mac

### 3. Установить зависимости
```pip install -r requirements.txt```

### 4. Установить браузеры Playwright
```playwright install```

### 5. Запуск тестов
```pytest -v```

### 6. Запуск с открытием браузера
```pytest --headed```

## 📊 Allure-отчёты

### 1. Сгенерировать Allure результаты
```pytest --alluredir=allure-results```

### 2. Построить и открыть отчёт
```allure serve allure-results```

## 🐳 Запуск в Docker
### 1. Собрать образ

```docker build -t ui-tests .```

### 2. Запустить тесты в контейнере

```docker run --rm ui-tests```

### Allure-результаты можно вывести наружу:

```docker run --rm -v %cd%/allure-results:/app/allure-results ui-tests```

## ✔️ Основной стек
Python 3.11+

Playwright (UI-автотесты)

Pytest

Allure (отчёты)

Docker (контейнеризация, CI)
