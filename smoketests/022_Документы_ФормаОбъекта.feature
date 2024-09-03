﻿
#language: ru

@tree
@SmokeTest

Функциональность: Дымовые тесты - Документы - ФормаОбъекта
# Конфигурация: WMS X5
# Версия: 5.0.9.51

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	И Я закрыл все окна клиентского приложения

Сценарий: Открытие формы документа "Акт сверки" (АктСверки)

	Дано Я открываю основную форму документа "АктСверки"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа АктСверки"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа АктСверки"
	И Я закрываю текущее окно

Сценарий: Открытие формы документа "Анкета" (Анкета)

	Дано Я открываю основную форму документа "Анкета"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа Анкета"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа Анкета"
	И Я закрываю текущее окно

Сценарий: Открытие формы документа "Встреча" (Встреча)

	Дано Я открываю основную форму документа "Встреча"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа Встреча"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа Встреча"
	И Я закрываю текущее окно

Сценарий: Открытие формы документа "Группа задач" (ГруппаЗадач)

	Дано Я открываю основную форму документа "ГруппаЗадач"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа ГруппаЗадач"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа ГруппаЗадач"
	И Я закрываю текущее окно

Сценарий: Открытие формы документа "Группа отбора" (ГруппаОтбора)

	Дано Я открываю основную форму документа "ГруппаОтбора"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа ГруппаОтбора"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа ГруппаОтбора"
	И Я закрываю текущее окно

Сценарий: Открытие формы документа "Заказ на комплектацию" (ЗаказНаКомплектацию)

	Дано Я открываю основную форму документа "ЗаказНаКомплектацию"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа ЗаказНаКомплектацию"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа ЗаказНаКомплектацию"
	И Я закрываю текущее окно

Сценарий: Открытие формы документа "Заказ на отгрузку" (ЗаказНаОтгрузку)

	Дано Я открываю основную форму документа "ЗаказНаОтгрузку"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа ЗаказНаОтгрузку"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа ЗаказНаОтгрузку"
	И Я закрываю текущее окно

Сценарий: Открытие формы документа "Запланированное взаимодействие" (ЗапланированноеВзаимодействие)

	Дано Я открываю основную форму документа "ЗапланированноеВзаимодействие"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа ЗапланированноеВзаимодействие"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа ЗапланированноеВзаимодействие"
	И Я закрываю текущее окно

Сценарий: Открытие формы документа "Изменение состояния" (ИзменениеСостояния)

	Дано Я открываю основную форму документа "ИзменениеСостояния"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа ИзменениеСостояния"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа ИзменениеСостояния"
	И Я закрываю текущее окно

Сценарий: Открытие формы документа "Комплектация" (Комплектация)

	Дано Я открываю основную форму документа "Комплектация"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа Комплектация"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа Комплектация"
	И Я закрываю текущее окно

Сценарий: Открытие формы документа "Изменение состояния партии" (КонтрольПартии)

	Дано Я открываю основную форму документа "КонтрольПартии"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа КонтрольПартии"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа КонтрольПартии"
	И Я закрываю текущее окно

Сценарий: Открытие формы документа "Лист задач" (ЛистЗадач)

	Дано Я открываю основную форму документа "ЛистЗадач"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа ЛистЗадач"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа ЛистЗадач"
	И Я закрываю текущее окно

Сценарий: Открытие формы документа "Маркировка" (Маркировка)

	Дано Я открываю основную форму документа "Маркировка"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа Маркировка"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа Маркировка"
	И Я закрываю текущее окно

Сценарий: Открытие формы документа "Проведение опросов" (НазначениеОпросов)

	Дано Я открываю основную форму документа "НазначениеОпросов"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа НазначениеОпросов"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа НазначениеОпросов"
	И Я закрываю текущее окно

Сценарий: Открытие формы документа "Ожидаемое поступление" (ОжидаемоеПоступление)

	Дано Я открываю основную форму документа "ОжидаемоеПоступление"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа ОжидаемоеПоступление"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа ОжидаемоеПоступление"
	И Я закрываю текущее окно

Сценарий: Открытие формы документа "Отзыв согласия на обработку персональных данных" (ОтзывСогласияНаОбработкуПерсональныхДанных)

	Дано Я открываю основную форму документа "ОтзывСогласияНаОбработкуПерсональныхДанных"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа ОтзывСогласияНаОбработкуПерсональныхДанных"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа ОтзывСогласияНаОбработкуПерсональныхДанных"
	И Я закрываю текущее окно

Сценарий: Открытие формы документа "Перемещение места хранения" (ПеремещениеМестаХранения)

	Дано Я открываю основную форму документа "ПеремещениеМестаХранения"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа ПеремещениеМестаХранения"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа ПеремещениеМестаХранения"
	И Я закрываю текущее окно

Сценарий: Открытие формы документа "Перемещение объекта хранения" (ПеремещениеОбъектаХранения)

	Дано Я открываю основную форму документа "ПеремещениеОбъектаХранения"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа ПеремещениеОбъектаХранения"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа ПеремещениеОбъектаХранения"
	И Я закрываю текущее окно

Сценарий: Открытие формы документа "Перемещение тары" (ПеремещениеТары)

	Дано Я открываю основную форму документа "ПеремещениеТары"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа ПеремещениеТары"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа ПеремещениеТары"
	И Я закрываю текущее окно

Сценарий: Открытие формы документа "Пересчет" (Пересчет)

	Дано Я открываю основную форму документа "Пересчет"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа Пересчет"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа Пересчет"
	И Я закрываю текущее окно

Сценарий: Открытие формы документа "План отгрузки" (ПланОтгрузки)

	Дано Я открываю основную форму документа "ПланОтгрузки"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа ПланОтгрузки"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа ПланОтгрузки"
	И Я закрываю текущее окно

Сценарий: Открытие формы документа "План поступления" (ПланПоступления)

	Дано Я открываю основную форму документа "ПланПоступления"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа ПланПоступления"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа ПланПоступления"
	И Я закрываю текущее окно

Сценарий: Открытие формы документа "Произвольная операция" (ПроизвольнаяОперация)

	Дано Я открываю основную форму документа "ПроизвольнаяОперация"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа ПроизвольнаяОперация"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа ПроизвольнаяОперация"
	И Я закрываю текущее окно

Сценарий: Открытие формы документа "Расчет услуг" (РасчетУслуг)

	Дано Я открываю основную форму документа "РасчетУслуг"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа РасчетУслуг"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа РасчетУслуг"
	И Я закрываю текущее окно

Сценарий: Открытие формы документа "Регистрация услуги" (РегистрацияУслуги)

	Дано Я открываю основную форму документа "РегистрацияУслуги"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа РегистрацияУслуги"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа РегистрацияУслуги"
	И Я закрываю текущее окно

Сценарий: Открытие формы документа "Рейс" (Рейс)

	Дано Я открываю основную форму документа "Рейс"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа Рейс"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа Рейс"
	И Я закрываю текущее окно

Сценарий: Открытие формы документа "Согласие на обработку персональных данных" (СогласиеНаОбработкуПерсональныхДанных)

	Дано Я открываю основную форму документа "СогласиеНаОбработкуПерсональныхДанных"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа СогласиеНаОбработкуПерсональныхДанных"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа СогласиеНаОбработкуПерсональныхДанных"
	И Я закрываю текущее окно

Сценарий: Открытие формы документа "Сообщение SMS" (СообщениеSMS)

	Дано Я открываю основную форму документа "СообщениеSMS"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа СообщениеSMS"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа СообщениеSMS"
	И Я закрываю текущее окно

Сценарий: Открытие формы документа "Телефонный звонок" (ТелефонныйЗвонок)

	Дано Я открываю основную форму документа "ТелефонныйЗвонок"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа ТелефонныйЗвонок"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа ТелефонныйЗвонок"
	И Я закрываю текущее окно

Сценарий: Открытие формы документа "Уведомление серийного учета" (УведомлениеСерийногоУчета)

	Дано Я открываю основную форму документа "УведомлениеСерийногоУчета"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа УведомлениеСерийногоУчета"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа УведомлениеСерийногоУчета"
	И Я закрываю текущее окно

Сценарий: Открытие формы документа "Установка стоимости услуг" (УстановкаСтоимостиУслуг)

	Дано Я открываю основную форму документа "УстановкаСтоимостиУслуг"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа УстановкаСтоимостиУслуг"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа УстановкаСтоимостиУслуг"
	И Я закрываю текущее окно

Сценарий: Открытие формы документа "Электронное письмо входящее" (ЭлектронноеПисьмоВходящее)

	Дано Я открываю основную форму документа "ЭлектронноеПисьмоВходящее"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа ЭлектронноеПисьмоВходящее"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа ЭлектронноеПисьмоВходящее"
	И Я закрываю текущее окно

Сценарий: Открытие формы документа "Электронное письмо исходящее" (ЭлектронноеПисьмоИсходящее)

	Дано Я открываю основную форму документа "ЭлектронноеПисьмоИсходящее"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа ЭлектронноеПисьмоИсходящее"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа ЭлектронноеПисьмоИсходящее"
	И Я закрываю текущее окно
