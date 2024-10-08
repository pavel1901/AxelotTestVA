﻿#language: ru

@tree

Функционал: [5_4] Работа со структурными штрихкодами

Как тестировщик я хочу
проверить создание Плана поступления 
чтобы его сконвертировать в Ожидаемое поступление  

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: [001] создание ПП
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю "Поступление" "Планы поступления"
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	И я нажимаю кнопку выбора у поля с именем 'Контрагент'
	И в таблице 'Список' я перехожу к строке:
		| "Код"         | "Наименование" | "Поставщик" | "Процесс поступления" |
		| "00000000001" | "Ротор, ООО"   | "Да"        | "Основной"            |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'	
	Тогда элемент формы с именем 'Процесс' стал равен "Основной"
	Тогда элемент формы с именем 'ТипПоступления' стал равен "Поступление от поставщика"
	И в поле с именем 'ДатаПоступления' я ввожу текущую дату
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
* Добавление Видеокамеры
	И в таблице 'Строки' я нажимаю на кнопку с именем 'СтрокиСоздать'
	И я нажимаю кнопку выбора у поля с именем 'Номенклатура'
	И в таблице 'Список' я перехожу к строке:
		| "Код"                  | "Наименование" |
		| "00000000000000000026" | "Видеокамера"  |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	И я нажимаю кнопку выбора у поля с именем 'УпаковкаНоменклатуры'
	И в таблице 'Список' я перехожу на один уровень вниз
	И в таблице 'Список' я перехожу к строке:
		| "Коэффициент" | "Наименование" |
		| "15,000"      | "кор"          |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	И в поле с именем 'КоличествоУпаковок' я ввожу текст "10,000"
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна "Строка плана поступления / ожидаемого поступления (создание) *" в течение 20 секунд
	Тогда таблица 'Строки' стала равной:
		| "№" | "Упаковка номенклатуры" | "Номенклатура" | "Количество упаковок" |
		| "1" | "кор"                   | "Видеокамера"  | "10,000"              |
* Добавление Акустического бокса
	И в таблице 'Строки' я нажимаю на кнопку с именем 'СтрокиСоздать'
	И я нажимаю кнопку выбора у поля с именем 'Номенклатура'
	И в таблице 'Список' я перехожу к строке:
		| "Код"                  | "Наименование"       |
		| "00000000000000000025" | "Акустический бокс"  |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	И я нажимаю кнопку выбора у поля с именем 'УпаковкаНоменклатуры'
	И в таблице 'Список' я перехожу к строке:
		| "Коэффициент" | "Наименование" |
		| "1,000"       | "шт"          |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	И в поле с именем 'КоличествоУпаковок' я ввожу текст "45,000"
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна "Строка плана поступления / ожидаемого поступления (создание) *" в течение 20 секунд
	Тогда таблица 'Строки' стала равной:
		| "№" | "Упаковка номенклатуры" | "Номенклатура"      | "Количество упаковок" |
		| "1" | "кор"                   | "Видеокамера"       | "10,000"              |
		| "2" | "шт"                    | "Акустический бокс" | "45,000"              |
* Изменение статуса
	И я нажимаю на кнопку с именем 'ВыполнитьОсновнуюОперацию'
	Тогда элемент формы с именем 'Статус' стал равен "Новый"