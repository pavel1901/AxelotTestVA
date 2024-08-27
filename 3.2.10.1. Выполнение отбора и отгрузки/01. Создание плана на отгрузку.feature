﻿#language: ru

@tree

Функционал: [3.2.10.1] подготовка плана отгрузки ООО Вектор  

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: [001] создание ПО
	И я закрываю все окна клиентского приложения

* Проверка стратегии отбора МХ
	И в командном интерфейсе я выбираю "Топология и процессы" "Стратегии"
	И в таблице 'Список' я перехожу к строке:
		| "Наименование" | "Тип"   |
		| "Отбор"        | "Отбор" |
	И в таблице 'Список' я выбираю текущую строку
	
Попытка
	Если таблица 'УсловияАлгоритмы' содержит строки:
		| "Условие/алгоритм"                                              | "Активный" |
		| "Отбор паллетами из зоны хранения"                              | "Нет"      |		
	Тогда в таблице 'УсловияАлгоритмы' я перехожу к строке:
		| "Условие/алгоритм"                                              | "Активный" |
		| "Отбор паллетами из зоны хранения"                              | "Нет"      |
// изменить в зависимости от теста
	И в таблице 'УсловияАлгоритмы' я изменяю флаг с именем 'УсловияАлгоритмыАктивный'
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна "Отбор (Стратегия) *" в течение 20 секунд
Исключение
	Если таблица 'УсловияАлгоритмы' содержит строки:
		| "Условие/алгоритм"                                              | "Активный" |
		| "Отбор паллетами из зоны хранения"                              | "Да"       |
	Тогда в таблице 'УсловияАлгоритмы' я перехожу к строке:
		| "Условие/алгоритм"                                              | "Активный" |
		| "Отбор паллетами из зоны хранения"                              | "Да"       |
// изменить в зависимости от теста
	И в таблице 'УсловияАлгоритмы' я изменяю флаг с именем 'УсловияАлгоритмыАктивный'
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна "Отбор (Стратегия) *" в течение 20 секунд
	
	
* Заполнение формы ПО
	И В командном интерфейсе я выбираю "Отгрузка" "Планы отгрузки"
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	И я нажимаю кнопку выбора у поля с именем 'Контрагент'
	И в таблице 'Список' я перехожу к строке:
			| 'Наименование' | 'Покупатель' | 'Процесс отгрузки' |
			| 'Вектор, ООО'  | 'Да'         | 'Основной'         |
	И я нажимаю на кнопку с именем "ФормаВыбрать"
	Тогда элемент формы с именем 'Приоритет' стал равен "Обычный"
	Тогда элемент формы с именем 'ТипОтгрузки' стал равен "Отгрузка клиенту"
	Тогда элемент формы с именем 'Процесс' стал равен "Основной"
	И в поле с именем 'ДатаОтгрузки' я ввожу текущую дату
	И я нажимаю на кнопку с именем 'ФормаЗаписать'

* Добавление строки Адаптер БП
	И в таблице 'Строки' я нажимаю на кнопку с именем 'СтрокиСоздать'
	И я нажимаю кнопку выбора у поля с именем 'Номенклатура'
	И в таблице 'Список' я перехожу к строке:
		| 'Наименование' | 'Код'                  |
		| 'Адаптер БП'   | '00000000000000000011' |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно "Строка плана отгрузки / заказа (создание) *" 
	И я нажимаю кнопку выбора у поля с именем 'УпаковкаНоменклатуры'
	Тогда открылось окно "Упаковки номенклатуры"
	И в таблице 'Список' я перехожу на один уровень вниз
	И в таблице 'Список' я перехожу к строке:
		| 'Наименование' | 'Коэффициент' |
		| 'кор'          | '10,000'      |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно "Строка плана отгрузки / заказа (создание) *"
	И в поле с именем 'КоличествоУпаковок' я ввожу текст "2,000"
	И	я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна "Строка плана отгрузки / заказа" в течение 20 секунд
	Тогда таблица "Строки" стала равной:
		| '№' | 'Номенклатура' | 'Упаковка номенклатуры' | 'Количество упаковок' | 'Количество' |
		| '1' | 'Адаптер БП'   | 'кор'                   | '2,000'               | '20,000'     |	

* Добавление строки Пульт ДУ
	И в таблице 'Строки' я нажимаю на кнопку с именем 'СтрокиСоздать'
	Тогда открылось окно "Строка плана отгрузки / заказа (создание)"
	И я нажимаю кнопку выбора у поля с именем 'Номенклатура'
	Тогда открылось окно "Номенклатура"
	И в таблице 'Список' я перехожу к строке:
		| 'Наименование' | 'Код'                  |
		| 'Пульт ДУ'   | '00000000000000000012' |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно "Строка плана отгрузки / заказа (создание) *" 
	И я нажимаю кнопку выбора у поля с именем 'УпаковкаНоменклатуры'
	Тогда открылось окно "Упаковки номенклатуры"
	И в таблице 'Список' я перехожу на один уровень вниз
	И в таблице 'Список' я перехожу к строке:
		| 'Наименование' | 'Коэффициент' |
		| 'шт'           | '1,000'      |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно "Строка плана отгрузки / заказа (создание) *"
	И в поле с именем 'КоличествоУпаковок' я ввожу текст "3,000"
	И	я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна "Строка плана отгрузки / заказа" в течение 20 секунд
	Тогда таблица "Строки" стала равной:
		| '№' | 'Номенклатура' | 'Упаковка номенклатуры' | 'Количество упаковок' | 'Количество' |
		| '1' | 'Адаптер БП'   | 'кор'                   | '2,000'               | '20,000'     |
		| '2' | 'Пульт ДУ'     | 'шт'                    | '3,000'               | '3,000'      |

* Добавление строки Стяжки для кабелей
	И в таблице 'Строки' я нажимаю на кнопку с именем 'СтрокиСоздать'
	Тогда открылось окно "Строка плана отгрузки / заказа (создание)"
	И я нажимаю кнопку выбора у поля с именем 'Номенклатура'
	Тогда открылось окно "Номенклатура"
	И в таблице 'Список' я перехожу к строке:
		| 'Наименование'       | 'Код'                  |
		| 'Стяжки для кабелей' | '00000000000000000013' |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно "Строка плана отгрузки / заказа (создание) *" 
	И я нажимаю кнопку выбора у поля с именем 'УпаковкаНоменклатуры'
	Тогда открылось окно "Упаковки номенклатуры"
	И в таблице 'Список' я перехожу на один уровень вниз
	И в таблице 'Список' я перехожу к строке:
		| 'Наименование'  | 'Коэффициент' |
		| 'кор.'          | '50,000'      |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно "Строка плана отгрузки / заказа (создание) *"
	И в поле с именем 'КоличествоУпаковок' я ввожу текст "20,000"
	И	я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна "Строка плана отгрузки / заказа" в течение 20 секунд
	Тогда таблица "Строки" стала равной:
		| '№' | 'Номенклатура'       | 'Упаковка номенклатуры' | 'Количество упаковок' | 'Количество'  |
		| '1' | 'Адаптер БП'         | 'кор'                   | '2,000'               | '20,000'      |
		| '2' | 'Пульт ДУ'           | 'шт'                    | '3,000'               | '3,000'       |
		| '3' | 'Стяжки для кабелей' | 'кор.'                  | '20,000'              | '1 000,000'   |

* Изменение статуса ПО на Новый
	И я нажимаю на кнопку с именем 'ВыполнитьОсновнуюОперацию'
	Тогда элемент формы 'Статус' стал равен 'Новый'