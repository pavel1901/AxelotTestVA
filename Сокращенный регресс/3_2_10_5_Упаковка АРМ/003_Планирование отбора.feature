﻿#language: ru

@tree

Функционал: [3_2_10_5] Выполнение упаковки с использованием рабочего места Упаковка

Как естировщик я хочу
спланировать задачи на отбор 
чтобы выполнить их на АРМ   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: [003] планирование отбора
	И я закрываю все окна клиентского приложения
* Проверка стратегии отбора МХ
	И в командном интерфейсе я выбираю "Топология и процессы" "Стратегии"
	И в таблице 'Список' я перехожу к строке:
		| "Наименование" | "Тип"   |
		| "Отбор"        | "Отбор" |
	И в таблице 'Список' я выбираю текущую строку
//Попытка
//	Если таблица 'УсловияАлгоритмы' содержит строки:
//		| "Условие/алгоритм"                                              | "Активный" |
//		| "Отбор паллетами из зоны хранения"                              | "Нет"      |		
//	Тогда в таблице 'УсловияАлгоритмы' я перехожу к строке:
//		| "Условие/алгоритм"                                              | "Активный" |
//		| "Отбор паллетами из зоны хранения"                              | "Нет"      |
//// изменить в зависимости от теста
////  И в таблице 'УсловияАлгоритмы' я изменяю флаг с именем 'УсловияАлгоритмыАктивный'
//	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
//	И я жду закрытия окна "Отбор (Стратегия) *" в течение 20 секунд
//Исключение
//	Если таблица 'УсловияАлгоритмы' содержит строки:
//		| "Условие/алгоритм"                                              | "Активный" |
//		| "Отбор паллетами из зоны хранения"                              | "Да"       |
//	Тогда в таблице 'УсловияАлгоритмы' я перехожу к строке:
//		| "Условие/алгоритм"                                              | "Активный" |
//		| "Отбор паллетами из зоны хранения"                              | "Да"       |
//// изменить в зависимости от теста
//	И в таблице 'УсловияАлгоритмы' я изменяю флаг с именем 'УсловияАлгоритмыАктивный'
//	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
//	И я жду закрытия окна "Отбор (Стратегия) *" в течение 20 секунд
* Планирование отбора
	И я закрываю все окна клиентского приложения
	И Запуск Регламентного задания "Обработка очереди событий"
	И Запуск Регламентного задания "Обработка очереди обработчиков"
	И В командном интерфейсе я выбираю "Отгрузка" "Заказы на отгрузку"
	И в таблице 'Список' я перехожу к строке:
		| 'Статус'       | 'Контрагент'    | 'Тип отгрузки'     | 'Процесс'                      |
		| 'К выполнению' | 'Градиент, ООО' | 'Отгрузка клиенту' | 'Процесс отгрузки с упаковкой' |
	И в таблице "Список" я выбираю текущую строку
	Тогда элемент формы 'Статус' стал равен 'К выполнению'
* Проверка отчета План / факт отгрузки
	И я нажимаю на кнопку с именем 'ПодменюОтчетыОбычное_Авто_4DE1393AE768F8158B466ED480B61313'
	И табличный документ 'ОтчетТабличныйДокумент' содержит строки:
		| 'Отбор:'                      | '*'             | ''          | ''             | ''                | ''          | ''                  | ''          | ''                         | ''                      | ''                   | ''        | ''            | ''          | ''          |
		| ''                            | ''              | ''          | ''             | ''                | ''          | ''                  | ''          | ''                         | ''                      | ''                   | ''        | ''            | ''          | ''          |
		| 'Заказ на отгрузку'           | 'Статус'        | 'План'      | 'Спланировано' | 'Зарезервировано' | 'Упаковано' | 'Готово к отгрузке' | 'Отгружено' | 'Осталось зарезервировать' | 'Осталось спланировать' | 'Осталось отгрузить' | 'Излишек' | 'Факт мерный' | 'План мин'  | 'План макс' |
		| 'Объект хранения'             | ''              | ''          | ''             | ''                | ''          | ''                  | ''          | ''                         | ''                      | ''                   | ''        | ''            | ''          | ''          |
		| 'Состояние'                   | 'Партия'        | ''          | ''             | ''                | ''          | ''                  | ''          | ''                         | ''                      | ''                   | ''        | ''            | ''          | ''          |
		| '*'                           | 'К выполнению'  | '1 000,000' | ''             | ''                | ''          | ''                  | ''          | '1 000,000'                | '1 000,000'             | '1 000,000'          | ''        | ''            | '1 000,000' | '1 000,000' |
		| 'Проявитель водно-спиртовой'  | ''              | '1 000,000' | ''             | ''                | ''          | ''                  | ''          | '1 000,000'                | '1 000,000'             | '1 000,000'          | ''        | ''            | '1 000,000' | '1 000,000' |
		| ''                            | ''              | '1 000,000' | ''             | ''                | ''          | ''                  | ''          | '1 000,000'                | '1 000,000'             | '1 000,000'          | ''        | ''            | '1 000,000' | '1 000,000' |
		| 'Итого'                       | ''              | '1 000,000' | ''             | ''                | ''          | ''                  | ''          | '1 000,000'                | '1 000,000'             | '1 000,000'          | ''        | ''            | '1 000,000' | '1 000,000' |
* запуск Планового отбора
	И я закрываю все окна клиентского приложения
	И Запуск Регламентного задания "Плановый отбор"
* проверка отчета Задачи по документу
	И В командном интерфейсе я выбираю "Отгрузка" "Отбор объектов хранения"
	И таблица 'Список' содержит строки:
		| "Статус"       | "Количество" | "Объект хранения"            | "Тип операции"            | "Дата партии"     | "Конечная зона" |
		| "Спланирована" | "1 000,000"  | "Проявитель водно-спиртовой" | "Отбор объектов хранения" | "12.07.2022"      | "Упаковка"      |		// здесь партия	
* запуск Расчета статусов документов
	И я закрываю все окна клиентского приложения
	И Запуск Регламентного задания "Расчет статусов документов"
	И В командном интерфейсе я выбираю "Отгрузка" "Заказы на отгрузку"
	И в таблице 'Список' я перехожу к строке:
		| 'Статус'         | 'Контрагент'    | 'Тип отгрузки'     | 'Процесс'                      |
		| 'Готов к отбору' | 'Градиент, ООО' | 'Отгрузка клиенту' | 'Процесс отгрузки с упаковкой' |
	И в таблице "Список" я выбираю текущую строку
	Тогда элемент формы 'Статус' стал равен 'Готов к отбору'
	И я закрываю все окна клиентского приложения
	И Запуск Регламентного задания "Обработка очереди событий"
	И Запуск Регламентного задания "Обработка очереди обработчиков"
	И В командном интерфейсе я выбираю "Отгрузка" "Заказы на отгрузку"
	И в таблице 'Список' я перехожу к строке:
		| 'Статус'          | 'Контрагент'    | 'Тип отгрузки'     | 'Процесс'                      |
		| 'Передан в отбор' | 'Градиент, ООО' | 'Отгрузка клиенту' | 'Процесс отгрузки с упаковкой' |
	И в таблице "Список" я выбираю текущую строку
	Тогда элемент формы 'Статус' стал равен 'Передан в отбор'
	И в таблице 'Строки' поле 'Спланировано' имеет значение '1 000 шт'
	И В текущем окне я нажимаю кнопку командного интерфейса "Связанные документы"
	И табличный документ 'ТаблицаОтчета' содержит строки:
		| ''                | 'Обработан'     | '*' |
		| 'Передан в отбор' | '*'             | ''  |
		| ''                | 'К выполнению'  | '*' |
	И я закрываю все окна клиентского приложения

Сценарий: [004] проверка отчета Задачи по документу
	И В командном интерфейсе я выбираю "Отгрузка" "Заказы на отгрузку"
	И в таблице 'Список' я перехожу к строке:
		| 'Статус'          | 'Контрагент'    | 'Тип отгрузки'     | 'Процесс'                      |
		| 'Передан в отбор' | 'Градиент, ООО' | 'Отгрузка клиенту' | 'Процесс отгрузки с упаковкой' |
	И в таблице "Список" я выбираю текущую строку
	И я нажимаю на кнопку с именем 'ПодменюОтчетыОбычное_Авто_CB77817A0D9EC07BAB15B115D7A35CD4'
	И табличный документ 'ОтчетТабличныйДокумент' содержит строки:
		| 'Отбор:'                  | '*'     | ''                        | ''              | ''               | ''                           | ''           | ''                 |
		| ''                        | ''      | ''                        | ''              | ''               | ''                           | ''           | ''                 |
		| 'Документ основание'      | ''      | ''                        | ''              | ''               | ''                           | ''           | 'Количество задач' |
		| 'Тип операции'            | ''      | ''                        | ''              | ''               | ''                           | ''           | ''                 |
		| 'Статус'                  | 'Ссылка'| 'Начальная зона'          | 'Конечная зона' | 'Место хранения' | 'Объект хранения'            | 'Количество' | ''                 |
		| '*'                       | ''      | ''                        | ''              | ''               | ''                           | ''           | '1'                |
		| 'Отбор объектов хранения' | ''      | ''                        | ''              | ''               | ''                           | ''           | '1'                |
		| 'К выполнению'            | '*'     | 'Зона отбора фототехники' | 'Упаковка'      | ''               | 'Проявитель водно-спиртовой' | '1 000,000'  | ''                 |
		| 'Итого'                   | ''      | ''                        | ''              | ''               | ''                           | ''           | '1'                |
	И я закрываю все окна клиентского приложения

Сценарий: [005] проверка отчета План / факт отгрузки
	И В командном интерфейсе я выбираю "Отгрузка" "Заказы на отгрузку"
	И в таблице 'Список' я перехожу к строке:
		| 'Статус'          | 'Контрагент'    | 'Тип отгрузки'     | 'Процесс'                      |
		| 'Передан в отбор' | 'Градиент, ООО' | 'Отгрузка клиенту' | 'Процесс отгрузки с упаковкой' |
	И в таблице "Список" я выбираю текущую строку
	И я нажимаю на кнопку с именем 'ПодменюОтчетыОбычное_Авто_4DE1393AE768F8158B466ED480B61313'
	И табличный документ 'ОтчетТабличныйДокумент' содержит строки
		| 'Отбор:'                     | '*'               | ''          | ''             | ''                | ''          | ''                  | ''          | ''                         | ''                      | ''                   | ''          | ''            | ''          | ''          |
		| ''                           | ''                | ''          | ''             | ''                | ''          | ''                  | ''          | ''                         | ''                      | ''                   | ''          | ''            | ''          | ''          |
		| 'Заказ на отгрузку'          | 'Статус'          | 'План'      | 'Спланировано' | 'Зарезервировано' | 'Упаковано' | 'Готово к отгрузке' | 'Отгружено' | 'Осталось зарезервировать' | 'Осталось спланировать' | 'Осталось отгрузить' | 'Излишек'   | 'Факт мерный' | 'План мин'  | 'План макс' |
		| 'Объект хранения'            | ''                | ''          | ''             | ''                | ''          | ''                  | ''          | ''                         | ''                      | ''                   | ''          | ''            | ''          | ''          |
		| 'Состояние'                  | 'Партия'          | ''          | ''             | ''                | ''          | ''                  | ''          | ''                         | ''                      | ''                   | ''          | ''            | ''          | ''          |
		| '*'                          | 'Передан в отбор' | '1 000,000' | '1 000,000'    | ''                | ''          | ''                  | ''          | '1 000,000'                | ''                      | '1 000,000'          | ''          | ''            | '1 000,000' | '1 000,000' |
		| 'Проявитель водно-спиртовой' | ''                | '1 000,000' | '1 000,000'    | ''                | ''          | ''                  | ''          | '1 000,000'                | ''                      | '1 000,000'          | ''          | ''            | '1 000,000' | '1 000,000' |
		| ''                           | ''                | '1 000,000' | ''             | ''                | ''          | ''                  | ''          | '1 000,000'                | '1 000,000'             | '1 000,000'          | ''          | ''            | '1 000,000' | '1 000,000' |
		| 'Годен'                      | '*'               | ''          | '1 000,000'    | ''                | ''          | ''                  | ''          | ''                         | ''                      | ''                   | '1 000,000' | ''            | ''          | ''          |
		| 'Итого'                      | ''                | '1 000,000' | '1 000,000'    | ''                | ''          | ''                  | ''          | '1 000,000'                | ''                      | '1 000,000'          | ''          | ''            | '1 000,000' | '1 000,000' |