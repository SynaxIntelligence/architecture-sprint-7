# Анализ и классификация данных

## Классификация типов данных по ISO/IEC 27001 и 27002

### Типы данных и оценка рисков

| № | Тип данных              | Предмет                                             | Use-case                           | Домен                                             | Источник риска (активы)         |
|---|-------------------------|-----------------------------------------------------|------------------------------------|---------------------------------------------------|---------------------------------|
| 1 | Внутренние данные       | Данные об объектах недвижимости                     | Просматривать объекты недвижимости | Группа сервисов для клиентов                      | client-mart-estate-app          |
| 2 | Внутренние данные       | Данные бухгалтерского учета                         | Вести бухгалтерский учет           | Внутренние сервисы                                | accountant-service              |
| 3 | Внутренние данные       | Данные BI отчетов                                   | Создавать аналитические отчеты     | Внутренние сервисы                                | Хранилище данных, DWH Хранилище |
| 4 | Конфиденциальные данные | Персональные данные пользователя (ФИО, контакт, ПД) | Зарегистрироваться в ИС            | Группа сервисов ЖКУ, Группа сервисов для клиентов | auth-service                    |
| 5 | Конфиденциальные данные | Данные из ИС управляющих компаний                   | Получать информацию от УК          | Группа сервисов ЖКУ                               | tenant-core-app                 |
| 6 | Секретные данные        | Платежные данные собственников                      | Оплатить услуги ЖКХ                | Группа сервисов ЖКУ                               | tenant-core-app                 |
| 7 | Секретные данные        | Данные онлайн-сделки Клиента                        | Провести онлайн сделку             | Группа сервисов для клиентов                      | client-mart-app, client-crm-app |

### Риски

1. **Данные об объектах недвижимости**

- **Риски**: искажение, некачественные данные
- **Обоснование**: искажение данных об объектах недвижимости может привести к некорректной оценке со стороны клиента и как следствие потери сделки
- **Оценка**: значительный

2. **Данные бухгалтерского учета**

- **Риски**: некачественные данные, обесценивание
- **Обоснование**: риск получения неактуальных / некорректных данных для ведения БУ, ошибки в финансовых отчетах компании, штрафы
- **Оценка**: значительный

3. **Данные BI отчетов**

- **Риски**: некачественные данные, обесценивание
- **Обоснование**: риск получения неактуальных / некорректных данных для составления отчетов, на основании которых принимаются некорректные оперативные / стратегические решения (ошибка в оценках)
- **Оценка**: значительный

4. **Данные из ИС управляющих компаний**

- **Риски**: утечка
- **Обоснование**: утечка персональных данных собственников негативно влияет на доверие пользователей, а также становится одной из причин реализации мошеннических схем
- **Оценка**: значительный

5. **Персональные данные пользователя**

- **Риски**: утечка
- **Обоснование**: утечка ПД ведет к штрафам и потере доверия пользователей
- **Оценка**: критический

6. **Платежные данные собственников**

- **Риски**: утечка
- **Обоснование**: утечка финансовых данных - нарушение законодательства и потеря клиентов
- **Оценка**: критический

7. **Данные онлайн-сделки Клиента**

- **Риски**: утечка, искажение
- **Обоснование**: искажение данных при онлайн-сделке может привести к незаконным транзакциям, потери клиентов, прямым убыткам, нарушению законодательства
- **Оценка**: критический
