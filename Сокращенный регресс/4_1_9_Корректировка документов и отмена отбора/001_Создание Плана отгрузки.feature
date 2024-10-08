﻿#language: ru

@tree

Функционал: [4_1_9] Корректировка документов и отмены отбора

Как тестировщик я хочу
проверить создание Плана отгрузки
чтобы в последствии успешно его сконвектировать в Заказ на отгрузку   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: [001] создание Плана отгрузки
	И я закрываю все окна клиентского приложения
* Заполнение формы ПО
	И В командном интерфейсе я выбираю "Отгрузка" "Планы отгрузки"
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	И я нажимаю на кнопку с именем 'ВыполнитьОсновнуюОперацию'
	Тогда элемент формы 'Статус' стал равен 'Не загружен'
	И я нажимаю кнопку выбора у поля с именем 'Контрагент'
	И в таблице 'Список' я перехожу к строке:
			| 'Наименование'   | 'Покупатель' | 'Процесс отгрузки' |
			| 'Интеграл, ООО'  | 'Да'         | 'Основной'         |
	И я нажимаю на кнопку с именем "ФормаВыбрать"
	Тогда элемент формы с именем 'ТипОтгрузки' стал равен "Отгрузка клиенту"
	Тогда элемент формы с именем 'Процесс' стал равен "Основной"
	И в поле с именем 'ДатаОтгрузки' я ввожу текущую дату
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
* Добавление строки Объектив
	И в таблице 'Строки' я нажимаю на кнопку с именем 'СтрокиСоздать'
	И	я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я нажимаю кнопку выбора у поля с именем 'Номенклатура'
	Тогда открылось окно "Номенклатура"
	И в таблице 'Список' я перехожу к строке:
		| 'Наименование' | 'Код'                  |
		| 'Объектив'     | '00000000000000000003' |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	И я нажимаю кнопку выбора у поля с именем 'УпаковкаНоменклатуры'
	И в таблице 'Список' я перехожу к строке:
		| 'Наименование' | 'Коэффициент' |
		| 'шт'           | '1,000'       |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	И в поле с именем 'КоличествоУпаковок' я ввожу текст "10,000"
	И	я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна "Строка плана отгрузки / заказа" в течение 20 секунд
	Тогда таблица "Строки" стала равной:
		| '№' | 'Номенклатура' | 'Упаковка номенклатуры' | 'Количество упаковок'  | 'Количество' |
		| '1' | 'Объектив'     | 'шт'                    | '10,000'               | '10,000'     |
* Изменение статуса ПО на Новый
	И я нажимаю на кнопку с именем 'ВыполнитьОсновнуюОперацию'
	Тогда элемент формы 'Статус' стал равен 'Новый'