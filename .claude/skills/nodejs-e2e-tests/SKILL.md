---
name: nodejs-e2e-tests
description: Стандарты написания E2E тестов на Playwright + TypeScript. Применяй всегда когда пишешь, редактируешь или ревьюишь e2e тесты.
---

# Стандарты написания E2E тестов (Playwright)

- [Локаторы](#локаторы)
- [Assertions и ожидание](#assertions-и-ожидание)
- [Изоляция данных](#изоляция-данных)
- [Page Object Model](#page-object-model)
- [Cleanup](#cleanup)

## Локаторы

Приоритет от лучшего к худшему:
1. `getByRole()` — основной выбор
2. `getByLabel()` — для полей форм
3. `getByText()` — для уникального текста
4. `getByTestId()` — когда нет других вариантов

Не использовать CSS-селекторы и XPath — хрупкие, ломаются при рефакторинге.

## Assertions и ожидание

- Использовать web-first assertions: `toBeVisible()`, `toHaveText()`, `toHaveURL()`
- Не использовать `waitForTimeout()` с фиксированными значениями
- При необходимости явного ожидания: `waitForLoadState()`, `waitForSelector()`, `waitForURL()`

## Изоляция данных

- Каждый тест создаёт свои уникальные данные через `crypto.randomUUID()`
- По возможности не полагаться на предзаполненные данные в БД
- Проверять структуру, а не конкретные данные (заголовки колонок, а не значения ячеек)

## Page Object Model

Паттерн инкапсуляции локаторов и действий страницы в класс.

```typescript
class LoginPage {
  constructor(private page: Page) {}

  get usernameInput() { return this.page.getByLabel("Имя пользователя") }
  get passwordInput() { return this.page.getByLabel("Пароль") }
  get loginButton() { return this.page.getByRole("button", { name: /Войти/i }) }

  async login(username: string, password: string) {
    await this.usernameInput.fill(username)
    await this.passwordInput.fill(password)
    await this.loginButton.click()
  }
}
```

Использовать когда: страница используется в >5 тестах, много повторяющихся локаторов.

Не использовать когда: простые страницы с 1-2 тестами, уникальные взаимодействия.

## Cleanup

При работе с реальным бэкендом тесты оставляют данные в БД. Стратегия очистки — на усмотрение проекта:
- `afterEach` / `afterAll` — явное удаление созданных данных через API
- Без очистки — если тестовая БД сбрасывается между запусками

