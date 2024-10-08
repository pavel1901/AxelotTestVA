﻿#language: ru

@tree

Функционал: [4_1_7] Контроль отгрузки по составу и местам хранения

Как тестировщик я хочу
проверить планирование отбора
чтобы выполнить задачи в МК3  

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: [005] планирование отбора
	И я закрываю все окна клиентского приложения
	И Запуск Регламентного задания "Обработка очереди событий"
	И Запуск Регламентного задания "Обработка очереди обработчиков"
	И В командном интерфейсе я выбираю "Отгрузка" "Заказы на отгрузку"
	И в таблице "Список" я перехожу к строке:
		| "Контрагент"    | "Процесс"                                 | "Статус"        | "Тип отгрузки"     |
		| "Градиент, ООО" | "Процесс отгрузки с контролем по составу" | "К выполнению"  | "Отгрузка клиенту" |
	И в таблице 'Список' я выбираю текущую строку
* проверка отчета План / факт отгрузки
	И я нажимаю на кнопку с именем 'ПодменюОтчетыОбычное_Авто_4DE1393AE768F8158B466ED480B61313'
	И табличный документ 'ОтчетТабличныйДокумент' содержит строки:
		| 'Заказ на отгрузку'                           | 'Статус'                                                                | 'План'    | 'Спланировано' | 'Зарезервировано' | 'Упаковано' | 'Готово к отгрузке' | 'Отгружено' | 'Осталось зарезервировать' | 'Осталось спланировать' | 'Осталось отгрузить' | 'Излишек' | 'Факт мерный' | 'План мин' | 'План макс' |
		| 'Объект хранения'                             | ''                                                                      | ''        | ''             | ''                | ''          | ''                  | ''          | ''                         | ''                      | ''                   | ''        | ''            | ''         | ''          |
		| 'Состояние'                                   | 'Партия'                                                                | ''        | ''             | ''                | ''          | ''                  | ''          | ''                         | ''                      | ''                   | ''        | ''            | ''         | ''          |
		| '*'                                           | 'К выполнению'                                                          | '100,000' | ''             | ''                | ''          | ''                  | ''          | '100,000'                  | '100,000'               | '100,000'            | ''        | ''            | '100,000'  | '100,000'   |
		| 'Фиксаж водный'                               | ''                                                                      | '100,000' | ''             | ''                | ''          | ''                  | ''          | '100,000'                  | '100,000'               | '100,000'            | ''        | ''            | '100,000'  | '100,000'   |
		| ''                                            | ''                                                                      | '100,000' | ''             | ''                | ''          | ''                  | ''          | '100,000'                  | '100,000'               | '100,000'            | ''        | ''            | '100,000'  | '100,000'   |
		| 'Итого'                                       | ''                                                                      | '100,000' | ''             | ''                | ''          | ''                  | ''          | '100,000'                  | '100,000'               | '100,000'            | ''        | ''            | '100,000'  | '100,000'   |
	И я закрываю все окна клиентского приложения
* запуск Планового отбора
	И Запуск Регламентного задания "Плановый отбор"
	И В командном интерфейсе я выбираю "Отгрузка" "Заказы на отгрузку"
	И в таблице "Список" я перехожу к строке:
		| "Контрагент"    | "Процесс"                                 | "Статус"        | "Тип отгрузки"     |
		| "Градиент, ООО" | "Процесс отгрузки с контролем по составу" | "К выполнению"  | "Отгрузка клиенту" |
	И в таблице 'Список' я выбираю текущую строку
* проверка отчета Задачи по документу
	И В командном интерфейсе я выбираю "Отгрузка" "Отбор объектов хранения"
	Тогда таблица 'Список' содержит строки:
		| "Статус"       | "Количество" | "Объект хранения" | "Тип операции"            | "Начальная зона"          | "Начальное место хранения 1" | "Состояние" | "Дата партии" | "Конечная зона"   |
		| "Спланирована" | "100,000"    | "Фиксаж водный"   | "Отбор объектов хранения" | "Зона отбора фототехники" | "3-5-1-1"                    | "Годен"     | "16.07.2024"  | "Зона сортировки" |                                                                    | ''                        | ''                | ''               | ''                | ''           | '1'                |
// здесь партия	
	И я закрываю все окна клиентского приложения
* запуск Расчета статуса документов
	И Запуск Регламентного задания "Расчет статусов документов"
	И В командном интерфейсе я выбираю "Отгрузка" "Заказы на отгрузку"
	И таблица "Список" содержит строки:
		| "Контрагент"    | "Процесс"                                 | "Статус"          | "Тип отгрузки"     |
		| "Градиент, ООО" | "Процесс отгрузки с контролем по составу" | "Готов к отбору"  | "Отгрузка клиенту" |
	И я закрываю все окна клиентского приложения
	И Запуск Регламентного задания "Обработка очереди событий"
	И Запуск Регламентного задания "Обработка очереди обработчиков"
	И В командном интерфейсе я выбираю "Отгрузка" "Заказы на отгрузку"
	И В командном интерфейсе я выбираю "Отгрузка" "Заказы на отгрузку"
	И в таблице "Список" я перехожу к строке:
		| "Контрагент"    | "Процесс"                                 | "Статус"           | "Тип отгрузки"     |
		| "Градиент, ООО" | "Процесс отгрузки с контролем по составу" | "Передан в отбор"  | "Отгрузка клиенту" |
	И в таблице 'Список' я выбираю текущую строку
	Тогда элемент формы с именем 'Статус' стал равен 'Передан в отбор'
	Тогда в таблице 'Строки' поле 'Спланировано' имеет значение '100 шт'
* проверка отчета Задачи по документу
	И я нажимаю на кнопку с именем 'ПодменюОтчетыОбычное_Авто_CB77817A0D9EC07BAB15B115D7A35CD4'
	И табличный документ 'ОтчетТабличныйДокумент' содержит строки:
		| 'Документ основание'       | ''                                                                       | ''                        | ''                | ''               | ''                | ''           | 'Количество задач' |
		| 'Тип операции'             | ''                                                                       | ''                        | ''                | ''               | ''                | ''           | ''                 |
		| 'Статус'                   | 'Ссылка'                                                                 | 'Начальная зона'          | 'Конечная зона'   | 'Место хранения' | 'Объект хранения' | 'Количество' | ''                 |
		| '*'  						 | ''                                                                       | ''                        | ''                | ''               | ''                | ''           | '1'                |
		| 'Отбор объектов хранения'  | ''                                                                       | ''                        | ''                | ''               | ''                | ''           | '1'                |
		| 'К выполнению'             | '*'                                                                      | 'Зона отбора фототехники' | 'Зона сортировки' | ''               | 'Фиксаж водный'   | '100,000'    | ''                 |
		| 'Итого'                    | ''                                                                       | ''                        | ''                | ''               | ''                | ''           | '1'                |
	И я закрываю текущее окно
* проверка отчета План / факт отгрузки	
	И я нажимаю на кнопку с именем 'ПодменюОтчетыОбычное_Авто_4DE1393AE768F8158B466ED480B61313'
	И табличный документ 'ОтчетТабличныйДокумент' содержит строки:
		| ''                          | ''                                                                      | ''        | ''             | ''                | ''          | ''                  | ''          | ''                         | ''                      | ''                   | ''        | ''            | ''         | ''          |
		| 'Заказ на отгрузку'         | 'Статус'                                                                | 'План'    | 'Спланировано' | 'Зарезервировано' | 'Упаковано' | 'Готово к отгрузке' | 'Отгружено' | 'Осталось зарезервировать' | 'Осталось спланировать' | 'Осталось отгрузить' | 'Излишек' | 'Факт мерный' | 'План мин' | 'План макс' |
		| 'Объект хранения'           | ''                                                                      | ''        | ''             | ''                | ''          | ''                  | ''          | ''                         | ''                      | ''                   | ''        | ''            | ''         | ''          |
		| 'Состояние'                 | 'Партия'                                                                | ''        | ''             | ''                | ''          | ''                  | ''          | ''                         | ''                      | ''                   | ''        | ''            | ''         | ''          |
		| '*'                         | 'Передан в отбор'                                                       | '100,000' | '100,000'      | ''                | ''          | ''                  | ''          | '100,000'                  | ''                      | '100,000'            | ''        | ''            | '100,000'  | '100,000'   |
		| 'Фиксаж водный'             | ''                                                                      | '100,000' | '100,000'      | ''                | ''          | ''                  | ''          | '100,000'                  | ''                      | '100,000'            | ''        | ''            | '100,000'  | '100,000'   |
		| ''                          | ''                                                                      | '100,000' | ''             | ''                | ''          | ''                  | ''          | '100,000'                  | '100,000'               | '100,000'            | ''        | ''            | '100,000'  | '100,000'   |
		| 'Годен'                     | '*'                                                                     | ''        | '100,000'      | ''                | ''          | ''                  | ''          | ''                         | ''                      | ''                   | '100,000' | ''            | ''         | ''          |
		| 'Итого'                     | ''                                                                      | '100,000' | '100,000'      | ''                | ''          | ''                  | ''          | '100,000'                  | ''                      | '100,000'            | ''        | ''            | '100,000'  | '100,000'   |