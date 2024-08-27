﻿#language: ru

@tree

Функционал: [003]Выполнение приемки

Как тестировщик я хочу
выполнить приемку созданного ОП   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: [0006] Выполнение приемки МХ№1 (Блок питания по 10 коробок)
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю "Поступление" "Приемка (пересчет)"
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	*Заполняем поля в задаче
		И я нажимаю кнопку выбора у поля с именем 'ДокументОснование'
		И в таблице '' я перехожу к строке:
			| ""                      |
			| "Ожидаемое поступление" |
		И в таблице '' я выбираю текущую строку
		И в таблице 'Список' я перехожу к строке:
			| "Статус"       | "Процесс"  | "Количество строк" | "Контрагент" | "Тип поступления"           |
			| "К выполнению" | "Основной" | "3"                | "Ротор, ООО" | "Поступление от поставщика" |
		И я нажимаю на кнопку с именем 'ФормаВыбрать'
		И я нажимаю кнопку выбора у поля с именем 'Зона'
		И в таблице 'Список' я перехожу к строке:
			| "Класс мест хранения1" | "Класс мест хранения2" | "Наименование" | "Тип зоны" |
			| "Ячейка"               | "Поддон"               | "Приемка"      | "Приемка"  |
		И я нажимаю на кнопку с именем 'ФормаВыбрать'	
		И я нажимаю кнопку выбора у поля с именем 'МестоХранения1'
		И я нажимаю на кнопку с именем 'ФормаВыбрать'
	* Переводим к выполнению
		И я нажимаю на кнопку с именем 'ВыполнитьОсновнуюОперацию'
		И я нажимаю на кнопку с именем 'ВыполнитьОсновнуюОперацию'
		И из выпадающего списка с именем 'Исполнитель' я выбираю точное значение "Пузин Иван"
		И я нажимаю на кнопку с именем 'ФормаОК'
	* Переходим к заполнению табличной части МХ
		И в таблице 'СтрокиМестаХранения' я нажимаю на кнопку с именем 'СтрокиМестаХраненияДобавить'
		И в таблице 'СтрокиМестаХранения' я нажимаю кнопку выбора у реквизита с именем 'СтрокиМестаХраненияМестоХранения2'
	* Делаем фильтр по пустой зоне
		И в таблице 'Список' я нажимаю на кнопку с именем 'СписокНайти'
		И из выпадающего списка с именем 'FieldSelector' я выбираю точное значение "Зона"
		И я нажимаю на кнопку с именем 'Find'
		И я жду, что в таблице "Список" количество строк будет "больше" 0 в течение 20 секунд
		И в таблице 'Список' я выбираю текущую строку
	* Запоминаем поддон в переменную
		И в таблице 'СтрокиМестаХранения' я активизирую поле с именем 'СтрокиМестаХраненияМестоХранения2'
		И я запоминаю значение поля с именем 'СтрокиМестаХраненияМестоХранения2' таблицы 'СтрокиМестаХранения' как "НомерПоддона1"
	* Устанавливаем состояние МХ Доступно
		И в таблице 'СтрокиМестаХранения' я выбираю текущую строку
		И в таблице 'СтрокиМестаХранения' я нажимаю кнопку выбора у реквизита с именем 'СтрокиМестаХраненияСостояние'
		И в таблице 'Список' я перехожу к строке:
			| "Наименование" | "Разрешен отбор из места хранения" | "Разрешено размещение в место хранения" | "Тип"      |
			| "Доступно"     | "Да"                               | "Да"                                    | "Свободно" |
		И я нажимаю на кнопку с именем 'ФормаВыбрать'	
	* Заполняем объекты хранения
		И в таблице 'СтрокиОбъектыХранения' я нажимаю на кнопку с именем 'СтрокиОбъектыХраненияДобавить'
		И в таблице 'СтрокиОбъектыХранения' из выпадающего списка с именем 'СтрокиОбъектыХраненияМестоХранения' я выбираю точное значение "$НомерПоддона1$"
		И я перехожу к следующему реквизиту
		И в таблице 'СтрокиОбъектыХранения' из выпадающего списка с именем 'СтрокиОбъектыХраненияОбъектХранения' я выбираю точное значение "Блок питания"
		И я перехожу к следующему реквизиту
		И в таблице 'СтрокиОбъектыХранения' из выпадающего списка с именем 'СтрокиОбъектыХраненияСостояние' я выбираю точное значение "Годен"
		И я перехожу к следующему реквизиту
		И в таблице 'СтрокиОбъектыХранения' я активизирую поле с именем 'СтрокиОбъектыХраненияПартия'
		И в таблице 'СтрокиОбъектыХранения' я выбираю текущую строку
		И в таблице 'СтрокиОбъектыХранения' я нажимаю кнопку выбора у реквизита с именем 'СтрокиОбъектыХраненияПартия'
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		И в поле с именем 'Код' я ввожу текст "N-777666"
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
		И в таблице 'Список' я перехожу к строке:
			| "Наименование" |
			| "N-777666"     |
		И в таблице 'Список' я выбираю текущую строку
		И я жду закрытия окна "Партия (создание) *" в течение 20 секунд
		И в таблице 'СтрокиОбъектыХранения' я активизирую поле с именем 'СтрокиОбъектыХраненияКоличествоФакт'
		И в таблице 'СтрокиОбъектыХранения' в поле с именем 'СтрокиОбъектыХраненияКоличествоФакт' я ввожу текст "10,000"
		И в таблице 'СтрокиОбъектыХранения' я активизирую поле с именем 'СтрокиОбъектыХраненияУпаковка'
		И в таблице 'СтрокиОбъектыХранения' я нажимаю кнопку выбора у реквизита с именем 'СтрокиОбъектыХраненияУпаковка'
		И в таблице 'Список' я перехожу на один уровень вниз
		И я нажимаю на кнопку с именем 'ФормаВыбрать'
		И в таблице 'СтрокиОбъектыХранения' я завершаю редактирование строки
	* Переводим в Выполнена
		И я нажимаю на кнопку с именем 'ВыполнитьОсновнуюОперацию'
		И я нажимаю на кнопку с именем 'ФормаОК'

Сценарий: Выполнение приемки МХ№2 (Блок питания по 10 коробок)
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю "Поступление" "Приемка (пересчет)"
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	*Заполняем поля в задаче
		И я нажимаю кнопку выбора у поля с именем 'ДокументОснование'
		И в таблице '' я перехожу к строке:
			| ""                      |
			| "Ожидаемое поступление" |
		И в таблице '' я выбираю текущую строку
		И в таблице 'Список' я перехожу к строке:
			| "Статус"       | "Процесс"  | "Количество строк" | "Контрагент" | "Тип поступления"           |
			| "К выполнению" | "Основной" | "3"                | "Ротор, ООО" | "Поступление от поставщика" |
		И я нажимаю на кнопку с именем 'ФормаВыбрать'
		И я нажимаю кнопку выбора у поля с именем 'Зона'
		И в таблице 'Список' я перехожу к строке:
			| "Класс мест хранения1" | "Класс мест хранения2" | "Наименование" | "Тип зоны" |
			| "Ячейка"               | "Поддон"               | "Приемка"      | "Приемка"  |
		И я нажимаю на кнопку с именем 'ФормаВыбрать'
		И я нажимаю кнопку выбора у поля с именем 'МестоХранения1'
		И я нажимаю на кнопку с именем 'ФормаВыбрать'
	* Переводим к выполнению
		И я нажимаю на кнопку с именем 'ВыполнитьОсновнуюОперацию'
		И я нажимаю на кнопку с именем 'ВыполнитьОсновнуюОперацию'
		И из выпадающего списка с именем 'Исполнитель' я выбираю точное значение "Пузин Иван"
		И я нажимаю на кнопку с именем 'ФормаОК'
	* Переходим к заполнению табличной части МХ
		И в таблице 'СтрокиМестаХранения' я нажимаю на кнопку с именем 'СтрокиМестаХраненияДобавить'
		И в таблице 'СтрокиМестаХранения' я нажимаю кнопку выбора у реквизита с именем 'СтрокиМестаХраненияМестоХранения2'
	* Делаем фильтр по пустой зоне
		И в таблице 'Список' я нажимаю на кнопку с именем 'СписокНайти'
		И из выпадающего списка с именем 'FieldSelector' я выбираю точное значение "Зона"
		И я нажимаю на кнопку с именем 'Find'
		И я жду, что в таблице "Список" количество строк будет "больше" 0 в течение 20 секунд
		И в таблице 'Список' я выбираю текущую строку
	* Запоминаем поддон в переменную
		И в таблице 'СтрокиМестаХранения' я активизирую поле с именем 'СтрокиМестаХраненияМестоХранения2'
		И я запоминаю значение поля с именем 'СтрокиМестаХраненияМестоХранения2' таблицы 'СтрокиМестаХранения' как "НомерПоддона1"
	* Устанавливаем состояние МХ Доступно
		И в таблице 'СтрокиМестаХранения' я выбираю текущую строку
		И в таблице 'СтрокиМестаХранения' я нажимаю кнопку выбора у реквизита с именем 'СтрокиМестаХраненияСостояние'
		И в таблице 'Список' я перехожу к строке:
			| "Наименование" | "Разрешен отбор из места хранения" | "Разрешено размещение в место хранения" | "Тип"      |
			| "Доступно"     | "Да"                               | "Да"                                    | "Свободно" |
		И я нажимаю на кнопку с именем 'ФормаВыбрать'
	* Заполняем объекты хранения
		И в таблице 'СтрокиОбъектыХранения' я нажимаю на кнопку с именем 'СтрокиОбъектыХраненияДобавить'
		И в таблице 'СтрокиОбъектыХранения' из выпадающего списка с именем 'СтрокиОбъектыХраненияМестоХранения' я выбираю точное значение "$НомерПоддона1$"
		И я перехожу к следующему реквизиту
		И в таблице 'СтрокиОбъектыХранения' из выпадающего списка с именем 'СтрокиОбъектыХраненияОбъектХранения' я выбираю точное значение "Блок питания"
		И я перехожу к следующему реквизиту
		И в таблице 'СтрокиОбъектыХранения' из выпадающего списка с именем 'СтрокиОбъектыХраненияСостояние' я выбираю точное значение "Годен"
		И я перехожу к следующему реквизиту
		И в таблице 'СтрокиОбъектыХранения' я активизирую поле с именем 'СтрокиОбъектыХраненияПартия'
		И в таблице 'СтрокиОбъектыХранения' я выбираю текущую строку
		И в таблице 'СтрокиОбъектыХранения' я нажимаю кнопку выбора у реквизита с именем 'СтрокиОбъектыХраненияПартия'
		И в таблице 'Список' я перехожу к строке:
			| "Номер партии" |
			| "N-777666"     |
		И я нажимаю на кнопку с именем 'ФормаВыбрать'
		И в таблице 'СтрокиОбъектыХранения' я активизирую поле с именем 'СтрокиОбъектыХраненияКоличествоФакт'
		И в таблице 'СтрокиОбъектыХранения' в поле с именем 'СтрокиОбъектыХраненияКоличествоФакт' я ввожу текст "10,000"
		И в таблице 'СтрокиОбъектыХранения' я активизирую поле с именем 'СтрокиОбъектыХраненияУпаковка'
		И в таблице 'СтрокиОбъектыХранения' я нажимаю кнопку выбора у реквизита с именем 'СтрокиОбъектыХраненияУпаковка'
		И в таблице 'Список' я перехожу на один уровень вниз
		И я нажимаю на кнопку с именем 'ФормаВыбрать'
		И в таблице 'СтрокиОбъектыХранения' я завершаю редактирование строки
	* Переводим в Выполнена
		И я нажимаю на кнопку с именем 'ВыполнитьОсновнуюОперацию'
		И я нажимаю на кнопку с именем 'ФормаОК'
		Тогда элемент формы с именем 'Статус' стал равен "Выполнена"

Сценарий: Выполнение приемки МХ№3 (Блок питания 90 шт)
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю "Поступление" "Приемка (пересчет)"
	И я нажимаю на кнопку с именем 'ФормаСоздать'
*Заполняем поля в задаче
	И я нажимаю кнопку выбора у поля с именем 'ДокументОснование'
	И в таблице '' я перехожу к строке:
		| ""                      |
		| "Ожидаемое поступление" |
	И в таблице '' я выбираю текущую строку
	И в таблице 'Список' я перехожу к строке:
		| "Статус"       | "Процесс"  | "Количество строк" | "Контрагент" | "Тип поступления"           |
		| "К выполнению" | "Основной" | "3"                | "Ротор, ООО" | "Поступление от поставщика" |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	И я нажимаю кнопку выбора у поля с именем 'Зона'
	И в таблице 'Список' я перехожу к строке:
		| "Класс мест хранения1" | "Класс мест хранения2" | "Наименование" | "Тип зоны" |
		| "Ячейка"               | "Поддон"               | "Приемка"      | "Приемка"  |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	И я нажимаю кнопку выбора у поля с именем 'МестоХранения1'
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
* Переводим к выполнению
	И я нажимаю на кнопку с именем 'ВыполнитьОсновнуюОперацию'
	И я нажимаю на кнопку с именем 'ВыполнитьОсновнуюОперацию'
	И из выпадающего списка с именем 'Исполнитель' я выбираю точное значение "Пузин Иван"
	И я нажимаю на кнопку с именем 'ФормаОК'
* Переходим к заполнению табличной части МХ
	И в таблице 'СтрокиМестаХранения' я нажимаю на кнопку с именем 'СтрокиМестаХраненияДобавить'
	И в таблице 'СтрокиМестаХранения' я нажимаю кнопку выбора у реквизита с именем 'СтрокиМестаХраненияМестоХранения2'
* Делаем фильтр по пустой зоне
	И в таблице 'Список' я нажимаю на кнопку с именем 'СписокНайти'
	И из выпадающего списка с именем 'FieldSelector' я выбираю точное значение "Зона"
	И я нажимаю на кнопку с именем 'Find'
	И я жду, что в таблице "Список" количество строк будет "больше" 0 в течение 20 секунд
	И в таблице 'Список' я выбираю текущую строку
* Запоминаем поддон в переменную
	И в таблице 'СтрокиМестаХранения' я активизирую поле с именем 'СтрокиМестаХраненияМестоХранения2'
	И я запоминаю значение поля с именем 'СтрокиМестаХраненияМестоХранения2' таблицы 'СтрокиМестаХранения' как "НомерПоддона1"
* Устанавливаем состояние МХ Доступно
	И в таблице 'СтрокиМестаХранения' я выбираю текущую строку
	И в таблице 'СтрокиМестаХранения' я нажимаю кнопку выбора у реквизита с именем 'СтрокиМестаХраненияСостояние'
	И в таблице 'Список' я перехожу к строке:
			| "Наименование" | "Разрешен отбор из места хранения" | "Разрешено размещение в место хранения" | "Тип"      |
			| "Доступно"     | "Да"                               | "Да"                                    | "Свободно" |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
* Заполняем объекты хранения
	И в таблице 'СтрокиОбъектыХранения' я нажимаю на кнопку с именем 'СтрокиОбъектыХраненияДобавить'
	И в таблице 'СтрокиОбъектыХранения' из выпадающего списка с именем 'СтрокиОбъектыХраненияМестоХранения' я выбираю точное значение "$НомерПоддона1$"
	И я перехожу к следующему реквизиту
	И в таблице 'СтрокиОбъектыХранения' из выпадающего списка с именем 'СтрокиОбъектыХраненияОбъектХранения' я выбираю точное значение "Блок питания"
	И я перехожу к следующему реквизиту
	И в таблице 'СтрокиОбъектыХранения' из выпадающего списка с именем 'СтрокиОбъектыХраненияСостояние' я выбираю точное значение "Годен"
	И я перехожу к следующему реквизиту
	И в таблице 'СтрокиОбъектыХранения' я активизирую поле с именем 'СтрокиОбъектыХраненияПартия'
	И в таблице 'СтрокиОбъектыХранения' я выбираю текущую строку
		И в таблице 'СтрокиОбъектыХранения' я активизирую поле с именем 'СтрокиОбъектыХраненияПартия'
	И в таблице 'СтрокиОбъектыХранения' я нажимаю кнопку выбора у реквизита с именем 'СтрокиОбъектыХраненияПартия'
	И в таблице 'Список' я перехожу к строке:
		| "Номер партии" |
		| "N-777666"     |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	И в таблице 'СтрокиОбъектыХранения' я активизирую поле с именем 'СтрокиОбъектыХраненияКоличествоФакт'
	И в таблице 'СтрокиОбъектыХранения' в поле с именем 'СтрокиОбъектыХраненияКоличествоФакт' я ввожу текст "90,000"
	И в таблице 'СтрокиОбъектыХранения' я активизирую поле с именем 'СтрокиОбъектыХраненияУпаковка'
	И в таблице 'СтрокиОбъектыХранения' я нажимаю кнопку выбора у реквизита с именем 'СтрокиОбъектыХраненияУпаковка'
	И в таблице 'Список' я выбираю текущую строку
	И в таблице 'СтрокиОбъектыХранения' я завершаю редактирование строки
* Переводим в Выполнена
	И я нажимаю на кнопку с именем 'ВыполнитьОсновнуюОперацию'
	И я нажимаю на кнопку с именем 'ФормаОК'
	Тогда элемент формы с именем 'Статус' стал равен "Выполнена"

Сценарий: Выполнение приемки МХ№4 (Блок питания 10 шт Брак)
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю "Поступление" "Приемка (пересчет)"
	И я нажимаю на кнопку с именем 'ФормаСоздать'
*Заполняем поля в задаче
	И я нажимаю кнопку выбора у поля с именем 'ДокументОснование'
	И в таблице '' я перехожу к строке:
		| ""                      |
		| "Ожидаемое поступление" |
	И в таблице '' я выбираю текущую строку
	И в таблице 'Список' я перехожу к строке:
		| "Статус"       | "Процесс"  | "Количество строк" | "Контрагент" | "Тип поступления"           |
		| "К выполнению" | "Основной" | "3"                | "Ротор, ООО" | "Поступление от поставщика" |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	И я нажимаю кнопку выбора у поля с именем 'Зона'
	И в таблице 'Список' я перехожу к строке:
		| "Класс мест хранения1" | "Класс мест хранения2" | "Наименование" | "Тип зоны" |
		| "Ячейка"               | "Поддон"               | "Приемка"      | "Приемка"  |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'	
	И я нажимаю кнопку выбора у поля с именем 'МестоХранения1'
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
* Переводим к выполнению
	И я нажимаю на кнопку с именем 'ВыполнитьОсновнуюОперацию'
	И я нажимаю на кнопку с именем 'ВыполнитьОсновнуюОперацию'
	И из выпадающего списка с именем 'Исполнитель' я выбираю точное значение "Пузин Иван"
	И я нажимаю на кнопку с именем 'ФормаОК'
* Переходим к заполнению табличной части МХ
	И в таблице 'СтрокиМестаХранения' я нажимаю на кнопку с именем 'СтрокиМестаХраненияДобавить'
	И в таблице 'СтрокиМестаХранения' я нажимаю кнопку выбора у реквизита с именем 'СтрокиМестаХраненияМестоХранения2'
* Делаем фильтр по пустой зоне
	И в таблице 'Список' я нажимаю на кнопку с именем 'СписокНайти'
	И из выпадающего списка с именем 'FieldSelector' я выбираю точное значение "Зона"
	И я нажимаю на кнопку с именем 'Find'
	И я жду, что в таблице "Список" количество строк будет "больше" 0 в течение 20 секунд
	И в таблице 'Список' я выбираю текущую строку
* Запоминаем поддон в переменную
	И в таблице 'СтрокиМестаХранения' я активизирую поле с именем 'СтрокиМестаХраненияМестоХранения2'
	И я запоминаю значение поля с именем 'СтрокиМестаХраненияМестоХранения2' таблицы 'СтрокиМестаХранения' как "НомерПоддона1"
* Устанавливаем состояние МХ Доступно
	И в таблице 'СтрокиМестаХранения' я выбираю текущую строку
	И в таблице 'СтрокиМестаХранения' я нажимаю кнопку выбора у реквизита с именем 'СтрокиМестаХраненияСостояние'
	И в таблице 'Список' я перехожу к строке:
			| "Наименование" | "Разрешен отбор из места хранения" | "Разрешено размещение в место хранения" | "Тип"      |
			| "Доступно"     | "Да"                               | "Да"                                    | "Свободно" |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
* Заполняем объекты хранения
	И в таблице 'СтрокиОбъектыХранения' я нажимаю на кнопку с именем 'СтрокиОбъектыХраненияДобавить'
	И в таблице 'СтрокиОбъектыХранения' из выпадающего списка с именем 'СтрокиОбъектыХраненияМестоХранения' я выбираю точное значение "$НомерПоддона1$"
	И я перехожу к следующему реквизиту
	И в таблице 'СтрокиОбъектыХранения' из выпадающего списка с именем 'СтрокиОбъектыХраненияОбъектХранения' я выбираю точное значение "Блок питания"
	И я перехожу к следующему реквизиту
	И в таблице 'СтрокиОбъектыХранения' из выпадающего списка с именем 'СтрокиОбъектыХраненияСостояние' я выбираю точное значение "Брак"
	И я перехожу к следующему реквизиту
	И в таблице 'СтрокиОбъектыХранения' я активизирую поле с именем 'СтрокиОбъектыХраненияПартия'
	И в таблице 'СтрокиОбъектыХранения' я выбираю текущую строку
		И в таблице 'СтрокиОбъектыХранения' я активизирую поле с именем 'СтрокиОбъектыХраненияПартия'
	И в таблице 'СтрокиОбъектыХранения' я нажимаю кнопку выбора у реквизита с именем 'СтрокиОбъектыХраненияПартия'
	И в таблице 'Список' я перехожу к строке:
		| "Номер партии" |
		| "N-777666"     |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	И в таблице 'СтрокиОбъектыХранения' я активизирую поле с именем 'СтрокиОбъектыХраненияКоличествоФакт'
	И в таблице 'СтрокиОбъектыХранения' в поле с именем 'СтрокиОбъектыХраненияКоличествоФакт' я ввожу текст "10,000"
	И в таблице 'СтрокиОбъектыХранения' я активизирую поле с именем 'СтрокиОбъектыХраненияУпаковка'
	И в таблице 'СтрокиОбъектыХранения' я нажимаю кнопку выбора у реквизита с именем 'СтрокиОбъектыХраненияУпаковка'
	И в таблице 'Список' я выбираю текущую строку
	И в таблице 'СтрокиОбъектыХранения' я завершаю редактирование строки
* Переводим в Выполнена
	И я нажимаю на кнопку с именем 'ВыполнитьОсновнуюОперацию'
	И я нажимаю на кнопку с именем 'ФормаОК'
	Тогда элемент формы с именем 'Статус' стал равен "Выполнена"	

Сценарий: Выполнение приемки МХ№5,6,7 (Разъем по 100 кор на поддон)
	И я делаю 3 раз
		И я закрываю все окна клиентского приложения
		И В командном интерфейсе я выбираю "Поступление" "Приемка (пересчет)"
		И я нажимаю на кнопку с именем 'ФормаСоздать'
	*Заполняем поля в задаче
		И я нажимаю кнопку выбора у поля с именем 'ДокументОснование'
		И в таблице '' я перехожу к строке:
			| ""                      |
			| "Ожидаемое поступление" |
		И в таблице '' я выбираю текущую строку
		И в таблице 'Список' я перехожу к строке:
			| "Статус"       | "Процесс"  | "Количество строк" | "Контрагент" | "Тип поступления"           |
			| "К выполнению" | "Основной" | "3"                | "Ротор, ООО" | "Поступление от поставщика" |
		И я нажимаю на кнопку с именем 'ФормаВыбрать'
		И я нажимаю кнопку выбора у поля с именем 'Зона'
		И в таблице 'Список' я перехожу к строке:
			| "Класс мест хранения1" | "Класс мест хранения2" | "Наименование" | "Тип зоны" |
			| "Ячейка"               | "Поддон"               | "Приемка"      | "Приемка"  |
		И я нажимаю на кнопку с именем 'ФормаВыбрать'
		И я нажимаю кнопку выбора у поля с именем 'МестоХранения1'
		И я нажимаю на кнопку с именем 'ФормаВыбрать'
	* Переводим к выполнению
		И я нажимаю на кнопку с именем 'ВыполнитьОсновнуюОперацию'
		И я нажимаю на кнопку с именем 'ВыполнитьОсновнуюОперацию'
		И из выпадающего списка с именем 'Исполнитель' я выбираю точное значение "Пузин Иван"
		И я нажимаю на кнопку с именем 'ФормаОК'
	* Переходим к заполнению табличной части МХ
		И в таблице 'СтрокиМестаХранения' я нажимаю на кнопку с именем 'СтрокиМестаХраненияДобавить'
		И в таблице 'СтрокиМестаХранения' я нажимаю кнопку выбора у реквизита с именем 'СтрокиМестаХраненияМестоХранения2'
	* Делаем фильтр по пустой зоне
		И в таблице 'Список' я нажимаю на кнопку с именем 'СписокНайти'
		И из выпадающего списка с именем 'FieldSelector' я выбираю точное значение "Зона"
		И я нажимаю на кнопку с именем 'Find'
		И я жду, что в таблице "Список" количество строк будет "больше" 0 в течение 20 секунд
		И в таблице 'Список' я выбираю текущую строку
	* Запоминаем поддон в переменную
		И в таблице 'СтрокиМестаХранения' я активизирую поле с именем 'СтрокиМестаХраненияМестоХранения2'
		И я запоминаю значение поля с именем 'СтрокиМестаХраненияМестоХранения2' таблицы 'СтрокиМестаХранения' как "НомерПоддона1"
	* Устанавливаем состояние МХ Доступно
		И в таблице 'СтрокиМестаХранения' я выбираю текущую строку
		И в таблице 'СтрокиМестаХранения' я нажимаю кнопку выбора у реквизита с именем 'СтрокиМестаХраненияСостояние'
		И в таблице 'Список' я перехожу к строке:
			| "Наименование" | "Разрешен отбор из места хранения" | "Разрешено размещение в место хранения" | "Тип"      |
			| "Доступно"     | "Да"                               | "Да"                                    | "Свободно" |
		И я нажимаю на кнопку с именем 'ФормаВыбрать'
	* Заполняем объекты хранения
		И в таблице 'СтрокиОбъектыХранения' я нажимаю на кнопку с именем 'СтрокиОбъектыХраненияДобавить'
		И в таблице 'СтрокиОбъектыХранения' из выпадающего списка с именем 'СтрокиОбъектыХраненияМестоХранения' я выбираю точное значение "$НомерПоддона1$"
		И я перехожу к следующему реквизиту
		И в таблице 'СтрокиОбъектыХранения' я выбираю текущую строку
		И в таблице 'СтрокиОбъектыХранения' я нажимаю кнопку выбора у реквизита с именем 'СтрокиОбъектыХраненияОбъектХранения'
		И в таблице 'Список' я перехожу к строке:
			| "Единица измерения" | "Код"                  | "Модель учета" | "Наименование"  |
			| "шт"                | "00000000000000000004" | "Основная"     | "Разъем 3.5 мм" |
		И я нажимаю на кнопку с именем 'ФормаВыбрать'			
		И я перехожу к следующему реквизиту
		И в таблице 'СтрокиОбъектыХранения' из выпадающего списка с именем 'СтрокиОбъектыХраненияСостояние' я выбираю точное значение "Годен"
		И в таблице 'СтрокиОбъектыХранения' я активизирую поле с именем 'СтрокиОбъектыХраненияКоличествоФакт'
		И в таблице 'СтрокиОбъектыХранения' в поле с именем 'СтрокиОбъектыХраненияКоличествоФакт' я ввожу текст "100,000"
		И в таблице 'СтрокиОбъектыХранения' я активизирую поле с именем 'СтрокиОбъектыХраненияУпаковка'
		И в таблице 'СтрокиОбъектыХранения' я нажимаю кнопку выбора у реквизита с именем 'СтрокиОбъектыХраненияУпаковка'
		И в таблице 'Список' я перехожу на один уровень вниз
		И я нажимаю на кнопку с именем 'ФормаВыбрать'
		И в таблице 'СтрокиОбъектыХранения' я завершаю редактирование строки
	* Переводим в Выполнена
		И я нажимаю на кнопку с именем 'ВыполнитьОсновнуюОперацию'
		И я нажимаю на кнопку с именем 'ФормаОК'
		Тогда элемент формы с именем 'Статус' стал равен "Выполнена"	

Сценарий: Выполнение приемки МХ№8,9,10,11 (Кабель по 12 пач на поддон)
	И я делаю 4 раз
		И я закрываю все окна клиентского приложения
		И В командном интерфейсе я выбираю "Поступление" "Приемка (пересчет)"
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		*Заполняем поля в задаче
			И я нажимаю кнопку выбора у поля с именем 'ДокументОснование'
			И в таблице '' я перехожу к строке:
				| ""                      |
				| "Ожидаемое поступление" |
			И в таблице '' я выбираю текущую строку
			И в таблице 'Список' я перехожу к строке:
				| "Статус"       | "Процесс"  | "Количество строк" | "Контрагент" | "Тип поступления"           |
				| "К выполнению" | "Основной" | "3"                | "Ротор, ООО" | "Поступление от поставщика" |
			И я нажимаю на кнопку с именем 'ФормаВыбрать'
			И я нажимаю кнопку выбора у поля с именем 'Зона'
			И в таблице 'Список' я перехожу к строке:
				| "Класс мест хранения1" | "Класс мест хранения2" | "Наименование" | "Тип зоны" |
				| "Ячейка"               | "Поддон"               | "Приемка"      | "Приемка"  |
			И я нажимаю на кнопку с именем 'ФормаВыбрать'
			И я нажимаю кнопку выбора у поля с именем 'МестоХранения1'
			И я нажимаю на кнопку с именем 'ФормаВыбрать'
		* Переводим к выполнению
			И я нажимаю на кнопку с именем 'ВыполнитьОсновнуюОперацию'
			И я нажимаю на кнопку с именем 'ВыполнитьОсновнуюОперацию'
			И из выпадающего списка с именем 'Исполнитель' я выбираю точное значение "Пузин Иван"
			И я нажимаю на кнопку с именем 'ФормаОК'
		* Переходим к заполнению табличной части МХ
			И в таблице 'СтрокиМестаХранения' я нажимаю на кнопку с именем 'СтрокиМестаХраненияДобавить'
			И в таблице 'СтрокиМестаХранения' я нажимаю кнопку выбора у реквизита с именем 'СтрокиМестаХраненияМестоХранения2'
		* Делаем фильтр по пустой зоне
			И в таблице 'Список' я нажимаю на кнопку с именем 'СписокНайти'
			И из выпадающего списка с именем 'FieldSelector' я выбираю точное значение "Зона"
			И я нажимаю на кнопку с именем 'Find'
			И я жду, что в таблице "Список" количество строк будет "больше" 0 в течение 20 секунд
			И в таблице 'Список' я выбираю текущую строку
		* Запоминаем поддон в переменную
			И в таблице 'СтрокиМестаХранения' я активизирую поле с именем 'СтрокиМестаХраненияМестоХранения2'
			И я запоминаю значение поля с именем 'СтрокиМестаХраненияМестоХранения2' таблицы 'СтрокиМестаХранения' как "НомерПоддона1"
		* Устанавливаем состояние МХ Доступно
			И в таблице 'СтрокиМестаХранения' я выбираю текущую строку
			И в таблице 'СтрокиМестаХранения' я нажимаю кнопку выбора у реквизита с именем 'СтрокиМестаХраненияСостояние'
			И в таблице 'Список' я перехожу к строке:
				| "Наименование" | "Разрешен отбор из места хранения" | "Разрешено размещение в место хранения" | "Тип"      |
				| "Доступно"     | "Да"                               | "Да"                                    | "Свободно" |
			И я нажимаю на кнопку с именем 'ФормаВыбрать'
		* Заполняем объекты хранения
			И в таблице 'СтрокиОбъектыХранения' я нажимаю на кнопку с именем 'СтрокиОбъектыХраненияДобавить'
			И в таблице 'СтрокиОбъектыХранения' из выпадающего списка с именем 'СтрокиОбъектыХраненияМестоХранения' я выбираю точное значение "$НомерПоддона1$"
			И я перехожу к следующему реквизиту
			И в таблице 'СтрокиОбъектыХранения' я нажимаю кнопку выбора у реквизита с именем 'СтрокиОбъектыХраненияОбъектХранения'
			И в таблице 'Список' я перехожу к строке:
				| "Единица измерения" | "Код"                  | "Модель учета" | "Наименование"       |
				| "шт"                | "00000000000000000002" | "Основная"     | "Кабель микрофонный" |
			И в таблице 'Список' я выбираю текущую строку
			И я перехожу к следующему реквизиту
			И в таблице 'СтрокиОбъектыХранения' из выпадающего списка с именем 'СтрокиОбъектыХраненияСостояние' я выбираю точное значение "Годен"
			И в таблице 'СтрокиОбъектыХранения' я активизирую поле с именем 'СтрокиОбъектыХраненияКоличествоФакт'
			И в таблице 'СтрокиОбъектыХранения' в поле с именем 'СтрокиОбъектыХраненияКоличествоФакт' я ввожу текст "12,000"
			И в таблице 'СтрокиОбъектыХранения' я активизирую поле с именем 'СтрокиОбъектыХраненияУпаковка'
			И в таблице 'СтрокиОбъектыХранения' я нажимаю кнопку выбора у реквизита с именем 'СтрокиОбъектыХраненияУпаковка'
			И я нажимаю на кнопку с именем 'ФормаВыбрать'
			И в таблице 'СтрокиОбъектыХранения' я завершаю редактирование строки
		* Переводим в Выполнена
			И я нажимаю на кнопку с именем 'ВыполнитьОсновнуюОперацию'
			И я нажимаю на кнопку с именем 'ФормаОК'
			Тогда элемент формы с именем 'Статус' стал равен "Выполнена"

	Сценарий: Завершение приемки (завершение ОП)
		И я закрываю все окна клиентского приложения
		И Я открываю навигационную ссылку "$$СсылкаОП$$"
		Тогда таблица 'Строки' стала равной:
			| "№" | "Количество упаковок строки" | "Объект хранения"    | "Состояние" | "Партия" | "Количество (план)" | "Принято"   |
			| "1" | "30 кор."                    | "Блок питания"       | ""          | ""       | "300 шт"            | "300 шт"    |
			| "2" | "48 пач."                    | "Кабель микрофонный" | ""          | ""       | "48 пач."           | "48 пач."   |
			| "3" | "300 кор."                   | "Разъем 3.5 мм"      | ""          | ""       | "15 000 шт"         | "15 000 шт" |
		И я нажимаю на кнопку с именем 'ВыполнитьОсновнуюОперацию'
		Тогда элемент формы с именем 'Статус' стал равен "Принят"