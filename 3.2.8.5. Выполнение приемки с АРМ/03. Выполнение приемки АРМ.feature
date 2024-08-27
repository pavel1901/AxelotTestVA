﻿#language: ru

@tree

Функционал: выполнение приемки посредством АРМ 

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: [0022] приемка АРМ
	И я закрываю все окна клиентского приложения

* Сортировка мест хранения для переменной поддона
	И я открываю навигационную ссылку "e1cib/list/Справочник.МестаХранения"
	И я нажимаю на кнопку с именем 'ФормаНастройкаСписка'
	И в таблице 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент0ДоступныеПоляТаблица' я перехожу к строке:
		| "Доступные поля" |
		| "Зона"           |
	И я нажимаю на кнопку с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент0ДоступныеПоляВыбрать'
	И в таблице 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент0ДоступныеПоляТаблица' я перехожу к строке:
		| "Доступные поля"   |
		| "Место хранения 1" |
	И я нажимаю на кнопку с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент0ДоступныеПоляВыбрать'
	И в таблице 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент0ДоступныеПоляТаблица' я перехожу к строке:
		| "Доступные поля"   |
		| "Тип"              |
	И я нажимаю на кнопку с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент0ДоступныеПоляВыбрать'
	И в таблице 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент0Отбор' я перехожу к строке:
		| "Вид сравнения" | "Использование" | "Поле" | "Применение" | "Режим отображения" |
		| "Равно"         | "Да"            | "Зона" | "Обычное"    | "Быстрый доступ"    |
	И в таблице 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент0Отбор' я активизирую поле с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент0ОтборВидСравнения'
	И в таблице 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент0Отбор' из выпадающего списка с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент0ОтборВидСравнения' я выбираю точное значение "Не заполнено"
	И в таблице 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент0Отбор' я перехожу к строке:
		| "Вид сравнения" | "Использование" | "Поле"             | "Применение" | "Режим отображения" |
		| "Равно"         | "Да"            | "Место хранения 1" | "Обычное"    | "Быстрый доступ"    |
	И в таблице 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент0Отбор' я выбираю текущую строку
	И в таблице 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент0Отбор' из выпадающего списка с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент0ОтборВидСравнения' я выбираю точное значение "Не заполнено"
	И в таблице 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент0Отбор' я перехожу к строке:
		| "Вид сравнения" | "Использование" | "Поле"             | "Применение" | "Режим отображения" |
		| "Равно"         | "Да"            | "Тип"              | "Обычное"    | "Быстрый доступ"    |
	И в таблице 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент0Отбор' я выбираю текущую строку
	И в таблице 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент0Отбор' из выпадающего списка с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент0ОтборВидСравнения' я выбираю точное значение "Равно"
	И в таблице 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент0Отбор' из выпадающего списка с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент0ОтборПравоеЗначение' я выбираю точное значение "EUR"	
	И я нажимаю на кнопку с именем 'ФормаЗакончитьРедактирование'
	И в таблице "Список" я перехожу к следующей строке
	И я запоминаю значение текущего поля как "$$ПоддонАРМ$$"
	

* Запуск АРМ
	И я открываю навигационную ссылку "e1cib/app/Обработка.РМАвторизация"
	И в поле с именем 'Исполнитель' я ввожу текст "11"
	И я перехожу к следующему реквизиту
	И в поле с именем 'Пароль' я ввожу текст "11"
	И я нажимаю на кнопку с именем "ОК"

	// сейчас на АРМ работает только Приемка, когда будет активирована Упаковка, то вернуть шаг ниже
	// И я нажимаю на кнопку с именем 'Кнопка1'

* Приемка АРМ
	И я нажимаю на кнопку с именем 'ВыбратьИзСпискаОжидаемоеПоступление'
	И в таблице "Список" я перехожу к строке:
		| 'Статус'       | 'Контрагент' | 'Тип поступления'           | 'Процесс'  | 'Количество строк' |
		| 'К выполнению' | 'Ротор, ООО' | 'Поступление от поставщика' | 'Основной' | '3'                |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	И я нажимаю на кнопку с именем 'ФормаОбщаяКомандаРучнойВводШтрихкода'
	И в поле с именем 'InputFld' я ввожу значение переменной "$$ПоддонАРМ$$"
	И я нажимаю на кнопку с именем 'OK'

* Добавляем Блок питания
	И я нажимаю на кнопку с именем 'ФормаОбщаяКомандаРучнойВводШтрихкода'
	И в поле с именем "InputFld" я ввожу текст "2998457074898"
	И я нажимаю на кнопку с именем 'OK'
	И я нажимаю на кнопку с именем 'ВыбратьИзСпискаПартия'
	И в таблице "Список" я перехожу к последней строке 
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	И в поле с именем 'КоличествоУпаковок' я ввожу текст "5,000"
	И я перехожу к следующему реквизиту
	И я нажимаю на кнопку с именем 'ОчиститьМестоХранения'
	И я нажимаю на кнопку с именем 'КнопкаДа'
	И в таблице 'ПланФакт' поле 'Введено' имеет значение ''

// приемка 1 поддона с Блоком питания
	И я нажимаю на кнопку с именем 'ФормаОбщаяКомандаРучнойВводШтрихкода'
	И в поле с именем "InputFld" я ввожу текст "2998457074898"
	И я нажимаю на кнопку с именем 'OK'		
	И я нажимаю на кнопку с именем 'СоздатьПартию'
	И в поле с именем 'Код' я ввожу текст "L-112233"
	И я нажимаю на кнопку с именем 'ФормаПрименить'
	И в поле с именем 'КоличествоУпаковок' я ввожу текст "10,000"
	И я перехожу к следующему реквизиту
	И я нажимаю на кнопку "Принять и завершить"

// приемка 2 и 3 поддонов с блоком питания
	И я делаю 2 раз
		И я нажимаю на кнопку с именем 'СоздатьМестоХранения'
		И я нажимаю на кнопку с именем 'ВыбратьИзСпискаОбъектХранения'
		И в таблице "Список" я перехожу к строке:
			| 'Код'                  | 'Наименование' |
			| '00000000000000000001' | 'Блок питания' |
		И я нажимаю на кнопку с именем 'ФормаВыбрать'
		И я нажимаю на кнопку с именем 'ВыбратьИзСпискаПартия'
		И в таблице "Список" я перехожу к строке:
			| "Наименование" | "Номер партии" | "Объект хранения" | "Партия номенклатуры" |
			| "L-112233"     | "L-112233"     | "Блок питания"    | "L-112233"            |
		И в таблице "Список" я выбираю текущую строку		
		И в поле с именем 'КоличествоУпаковок' я ввожу текст "100,000"
		И я перехожу к следующему реквизиту
		И я нажимаю на кнопку "Принять и завершить"

* Добавление Кабеля микрофонного
	И я открываю навигационную ссылку "e1cib/list/Справочник.МестаХранения"
	И в таблице "Список" я перехожу к следующей строке
	И в таблице "Список" я перехожу к следующей строке
	И я запоминаю значение текущего поля как "$$ПоддонАРМ$$"
	И Я открываю навигационную ссылку "e1cib/app/Обработка.РМПриемка"
	И я нажимаю на кнопку с именем 'ФормаОбщаяКомандаРучнойВводШтрихкода'
	И в поле с именем 'InputFld' я ввожу значение переменной "$$ПоддонАРМ$$"
	И я нажимаю на кнопку с именем 'OK'
	И я нажимаю на кнопку с именем 'ВыбратьИзСпискаОбъектХранения'
	И в таблице "Список" я перехожу к строке:
		| 'Код'                  | 'Наименование'       |
		| '00000000000000000002' | 'Кабель микрофонный' |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	И в поле с именем 'КоличествоУпаковок' я ввожу текст "12,000"
	И я перехожу к следующему реквизиту
	И я нажимаю на кнопку "Принять и завершить"

	И я делаю 3 раз
		И я нажимаю на кнопку с именем 'СоздатьМестоХранения'
		И я нажимаю на кнопку с именем 'ФормаОбщаяКомандаРучнойВводШтрихкода'
		И в поле с именем "InputFld" я ввожу текст "2227930983724"
		И я нажимаю на кнопку с именем 'OK'		
		И в поле с именем 'КоличествоУпаковок' я ввожу текст "12,000"
		И я перехожу к следующему реквизиту
		И я нажимаю на кнопку "Принять и завершить"

* Добавление Разъема 3.5 мм
// Приемка 1 поддона Разъема 3.5 мм
	И я нажимаю на кнопку с именем 'СоздатьМестоХранения'
	И я нажимаю на кнопку с именем 'ФормаОбщаяКомандаРучнойВводШтрихкода'
	И в поле с именем "InputFld" я ввожу текст "2937596131125"
	И я нажимаю на кнопку с именем 'OK'
	И я нажимаю на кнопку с именем 'АктивироватьУпаковка'
	И я нажимаю на кнопку с именем 'ВыбратьИзСпискаУпаковка'
	И в таблице 'Список' я перехожу на один уровень вниз
	И я нажимаю на кнопку с именем 'ФормаВыбрать'				
	И в поле с именем 'КоличествоУпаковок' я ввожу текст "100,000"
	И я перехожу к следующему реквизиту
	И я нажимаю на кнопку "Принять и завершить"
// Приемка 2 поддона Разъема 3.5 мм
	И я нажимаю на кнопку с именем 'СоздатьМестоХранения'
	И я нажимаю на кнопку с именем 'ФормаОбщаяКомандаРучнойВводШтрихкода'
	И в поле с именем "InputFld" я ввожу текст "2937596131125"
	И я нажимаю на кнопку с именем 'OK'
	И в поле с именем 'КоличествоУпаковок' я ввожу текст "5000,000"
	И я перехожу к следующему реквизиту
	И я нажимаю на кнопку "Принять и завершить"
// Приемка 3 поддона 3.5 мм
	И я нажимаю на кнопку с именем 'СоздатьМестоХранения'
	И я нажимаю на кнопку с именем 'ФормаОбщаяКомандаРучнойВводШтрихкода'
	И в поле с именем "InputFld" я ввожу текст "2927645823199"
	И я нажимаю на кнопку с именем 'OK'
	И в поле с именем 'КоличествоУпаковок' я ввожу текст "100,000"
	И я перехожу к следующему реквизиту
	И я нажимаю на кнопку "Принять и завершить"

* Приемка остатков
// Кабель микрофонный
	И я нажимаю на кнопку с именем 'СоздатьМестоХранения'
	И я нажимаю на кнопку с именем 'ФормаОбщаяКомандаРучнойВводШтрихкода'
	И в поле с именем "InputFld" я ввожу текст "2227930983724"
	И я нажимаю на кнопку с именем 'OK'
	И в поле с именем 'КоличествоУпаковок' я ввожу текст "2,000"
	И я перехожу к следующему реквизиту
	И я нажимаю на кнопку с именем 'ПринятьМестоХранения'
// Разъем 3.5 мм
	И я нажимаю на кнопку с именем 'ФормаОбщаяКомандаРучнойВводШтрихкода'
	И в поле с именем "InputFld" я ввожу текст "2927645823199"
	И я нажимаю на кнопку с именем 'OK'
	И в поле с именем 'КоличествоУпаковок' я ввожу текст "1,000"
	И я перехожу к следующему реквизиту
	И я нажимаю на кнопку "Принять и завершить"

* Закрытие приемки АРМ	
	И Запуск Регламентного задания "Расчет статусов документов"
	И я нажимаю на кнопку с именем 'Выход'
	И я нажимаю на кнопку с именем 'КнопкаДа'

Сценарий: проверяем Анализ поступления
	И я закрываю все окна клиентского приложения
	И Я запускаю сценарий открытия TestClient или подключаю уже существующий
	И В командном интерфейсе я выбираю "Поступление" "Ожидаемые поступления"
	И в таблице 'Список' я перехожу к строке:
		| 'Статус' | 'Номер'       | 'Контрагент' | 'Тип поступления'           | 'Процесс'  |
		| 'Принят' | '00000000002' | 'Ротор, ООО' | 'Поступление от поставщика' | 'Основной' |
	И в таблице "Список" я выбираю текущую строку
	И я нажимаю на кнопку с именем 'ПодменюОтчетыОбычное_Авто_1B3545A17DA6C9C7C15FC19B84CEC3A4'
	Тогда табличный документ 'ОтчетТабличныйДокумент' содержит строки:
		| ''                       | ''           | ''          | ''           | ''                    |
		| 'Ожидаемое поступление'  | ''           | ''          | ''           | 'Приемка (пересчет)'  |
		| 'Место хранения'         | 'Зона'       | 'Состояние' | 'Количество' | 'Количество операций' |
		| 'Объект хранения'        | 'Партия'     | 'Состояние' | ''           | ''                    |
		| '*'                      | ''           | ''          | '15 348'     | '10'                  |
		| '*'                      | 'Приемка'    | 'Доступно'  | '100'        | '1'                   |
		| 'Блок питания'           | '*'          | 'Годен'     | '100'        | ''                    |
		| '*'                      | 'Приемка'    | 'Доступно'  | '5 000'      | '1'                   |
		| 'Разъем 3.5 мм'          | ''           | 'Годен'     | '5 000'      | ''                    |
		| '*'                      | 'Приемка'    | 'Доступно'  | '5 000'      | '1'                   |
		| 'Разъем 3.5 мм'          | ''           | 'Годен'     | '5 000'      | ''                    |
		| '*'                      | 'Приемка'    | 'Доступно'  | '5 000'      | '1'                   |
		| 'Разъем 3.5 мм'          | ''           | 'Годен'     | '5 000'      | ''                    |
		| '*'                      | 'Приемка'    | 'Доступно'  | '12'         | '1'                   |
		| 'Кабель микрофонный'     | ''           | 'Годен'     | '12'         | ''                    |
		| '*'                      | 'Приемка'    | 'Доступно'  | '12'         | '1'                   |
		| 'Кабель микрофонный'     | ''           | 'Годен'     | '12'         | ''                    |
		| '*'                      | 'Приемка'    | 'Доступно'  | '12'         | '1'                   |
		| 'Кабель микрофонный'     | ''           | 'Годен'     | '12'         | ''                    |
		| '*'                      | 'Приемка'    | 'Доступно'  | '12'         | '1'                   |
		| 'Кабель микрофонный'     | ''           | 'Годен'     | '12'         | ''                    |
		| '*'                      | 'Приемка'    | 'Доступно'  | '100'        | '1'                   |
		| 'Блок питания'           | 'С-12072024' | 'Годен'     | '100'        | ''                    |
		| '*'                      | 'Приемка'    | 'Доступно'  | '100'        | '1'                   |
		| 'Блок питания'           | 'С-12072024' | 'Годен'     | '100'        | ''                    |
		| 'Итого'                  | ''           | ''          | '15 348'     | '10'                  |
	И я закрываю текущее окно
	
Сценарий: проверяем отчет План / факт поступления
	И В командном интерфейсе я выбираю "Поступление" "Ожидаемые поступления"
	И в таблице 'Список' я перехожу к строке:
		| 'Статус' | 'Номер'       | 'Контрагент' | 'Тип поступления'           | 'Процесс'  |
		| 'Принят' | '00000000002' | 'Ротор, ООО' | 'Поступление от поставщика' | 'Основной' |
	И в таблице "Список" я выбираю текущую строку
	И я нажимаю на кнопку с именем 'ПодменюОтчетыОбычное_Авто_A90B98538A8EF6116BFF090284DBD8EC'
	И табличный документ 'ОтчетТабличныйДокумент' содержит строки:
		| 'Отбор:'                     | '*'           | ''           | ''           | ''                  | ''          | ''                 | ''           | ''            | ''           | ''           |
		| ''                           | ''            | ''           | ''           | ''                  | ''          | ''                 | ''           | ''            | ''           | ''           |
		| 'Ожидаемое поступление'      | 'Статус'      | 'План'       | 'Факт'       | 'Проконтролировано' | 'Размещено' | 'Осталось принять' | 'Излишек'    | 'Факт мерный' | 'План мин'   | 'План макс'  |
		| 'Объект хранения'            | ''            | ''           | ''           | ''                  | ''          | ''                 | ''           | ''            | ''           | ''           |
		| 'Состояние'                  | 'Партия'      | ''           | ''           | ''                  | ''          | ''                 | ''           | ''            | ''           | ''           |
		| '*'                          | 'Принят'      | '15 348,000' | '15 348,000' | ''                  | ''          | ''                 | ''           | ''            | '15 348,000' | '15 348,000' |
		| 'Блок питания'               | ''            | '300,000'    | '300,000'    | ''                  | ''          | ''                 | ''           | ''            | '300,000'    | '300,000'    |
		| ''                           | ''            | '300,000'    | ''           | ''                  | ''          | '300,000'          | ''           | ''            | '300,000'    | '300,000'    |
		| 'Годен'                      | 'N-777666'    | ''           | '100,000'    | ''                  | ''          | ''                 | '100,000'    | ''            | ''           | ''           |
		| 'Годен'                      | 'С-12072024'  | ''           | '200,000'    | ''                  | ''          | ''                 | '200,000'    | ''            | ''           | ''           |
		| 'Кабель микрофонный'         | ''            | '48,000'     | '48,000'     | ''                  | ''          | ''                 | ''           | ''            | '48,000'     | '48,000'     |
		| ''                           | ''            | '48,000'     | ''           | ''                  | ''          | '48,000'           | ''           | ''            | '48,000'     | '48,000'     |
		| 'Годен'                      | ''            | ''           | '48,000'     | ''                  | ''          | ''                 | '48,000'     | ''            | ''           | ''           |
		| 'Разъем 3.5 мм'              | ''            | '15 000,000' | '15 000,000' | ''                  | ''          | ''                 | ''           | ''            | '15 000,000' | '15 000,000' |
		| ''                           | ''            | '15 000,000' | ''           | ''                  | ''          | '15 000,000'       | ''           | ''            | '15 000,000' | '15 000,000' |
		| 'Годен'                      | ''            | ''           | '15 000,000' | ''                  | ''          | ''                 | '15 000,000' | ''            | ''           | ''           |
		| 'Итого'                      | ''            | '15 348,000' | '15 348,000' | ''                  | ''          | ''                 | ''           | ''            | '15 348,000' | '15 348,000' |
	И я закрываю все окна клиентского приложения

Сценарий: проверяем отчет Задачи по документу
	И В командном интерфейсе я выбираю "Поступление" "Ожидаемые поступления"
	И в таблице 'Список' я перехожу к строке:
		| 'Статус' | 'Номер'       | 'Контрагент' | 'Тип поступления'           | 'Процесс'  |
		| 'Принят' | '00000000002' | 'Ротор, ООО' | 'Поступление от поставщика' | 'Основной' |
	И в таблице "Список" я выбираю текущую строку
	И я нажимаю на кнопку с именем 'ПодменюОтчетыОбычное_Авто_CB77817A0D9EC07BAB15B115D7A35CD4'
	Тогда табличный документ 'ОтчетТабличныйДокумент' содержит строки:
		| 'Приемка (пересчет)'                              | ''                                                                           | ''               | ''              | ''               | ''                | ''           | '10'               |
		| 'Выполнена'                                       | 'Приемка (пересчет) EUR-000000073 (00000000064)'                             | 'Приемка'        | ''              | ''               | ''                | ''           | ''                 |
		| 'Выполнена'                                       | 'Приемка (пересчет) EUR-000000063 (00000000068)'                             | 'Приемка'        | ''              | ''               | ''                | ''           | ''                 |
		| 'Выполнена'                                       | 'Приемка (пересчет) EUR-000000065 (00000000070)'                             | 'Приемка'        | ''              | ''               | ''                | ''           | ''                 |
		| 'Выполнена'                                       | 'Приемка (пересчет) EUR-000000072 (00000000063)'                             | 'Приемка'        | ''              | ''               | ''                | ''           | ''                 |
		| 'Выполнена'                                       | 'Приемка (пересчет) EUR-000000066 (00000000071)'                             | 'Приемка'        | ''              | ''               | ''                | ''           | ''                 |
		| 'Выполнена'                                       | 'Приемка (пересчет) EUR-000000062 (00000000067)'                             | 'Приемка'        | ''              | ''               | ''                | ''           | ''                 |
		| 'Выполнена'                                       | 'Приемка (пересчет) EUR-000000064 (00000000069)'                             | 'Приемка'        | ''              | ''               | ''                | ''           | ''                 |
		| 'Выполнена'                                       | 'Приемка (пересчет) EUR-000000060 (00000000065)'                             | 'Приемка'        | ''              | ''               | ''                | ''           | ''                 |
		| 'Выполнена'                                       | 'Приемка (пересчет) EUR-000000059 (00000000062)'                             | 'Приемка'        | ''              | ''               | ''                | ''           | ''                 |
		| 'Выполнена'                                       | 'Приемка (пересчет) EUR-000000061 (00000000066)'                             | 'Приемка'        | ''              | ''               | ''                | ''           | ''                 |
		| 'Итого'                                           | ''                                                                           | ''               | ''              | ''               | ''                | ''           | '10'               |
	И я закрываю все окна клиентского приложения


// придумать как проверить задачи
//Сценарий: проверяем Связанные документы
//	И В командном интерфейсе я выбираю "Поступление" "Ожидаемые поступления"
//	И в таблице 'Список' я перехожу к строке:
//		| 'Статус' | 'Номер'       | 'Контрагент' | 'Тип поступления'           | 'Процесс'  |
//		| 'Принят' | '00000000002' | 'Ротор, ООО' | 'Поступление от поставщика' | 'Основной' |
//	И в таблице "Список" я выбираю текущую строку
//	И В текущем окне я нажимаю кнопку командного интерфейса "Связанные документы"
//	Тогда табличный документ 'ТаблицаОтчета' содержит строки:
//		| ''       | 'Выполнена'                                       | 'Приемка (пересчет) EUR-000000059 (00000000062)' |
//		| ''       | 'Выполнена'                                       | 'Приемка (пересчет) EUR-000000072 (00000000063)' |
//		| ''       | 'Выполнена'                                       | 'Приемка (пересчет) EUR-000000073 (00000000064)' |
//		| ''       | 'Выполнена'                                       | 'Приемка (пересчет) EUR-000000060 (00000000065)' |
//		| ''       | 'Выполнена'                                       | 'Приемка (пересчет) EUR-000000061 (00000000066)' |
//		| ''       | 'Выполнена'                                       | 'Приемка (пересчет) EUR-000000062 (00000000067)' |
//		| ''       | 'Выполнена'                                       | 'Приемка (пересчет) EUR-000000063 (00000000068)' |
//		| ''       | 'Выполнена'                                       | 'Приемка (пересчет) EUR-000000064 (00000000069)' |
//		| ''       | 'Выполнена'                                       | 'Приемка (пересчет) EUR-000000065 (00000000070)' |
//		| ''       | 'Выполнена'                                       | 'Приемка (пересчет) EUR-000000066 (00000000071)' |
//	И я закрываю все окна клиентского приложения

			