﻿
#language: ru

@tree
@SmokeTest

Функциональность: Дымовые тесты - Регистры сведений - ФормаОбъекта
# Конфигурация: WMS X5
# Версия: 5.0.9.51

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	И Я закрыл все окна клиентского приложения

Сценарий: Открытие формы регистра сведений "Автоматическое назначение задач" (АвтоматическоеНазначениеЗадач)

	Дано Я открываю основную форму регистра сведений "АвтоматическоеНазначениеЗадач"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений АвтоматическоеНазначениеЗадач"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений АвтоматическоеНазначениеЗадач"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Адреса ячеек" (АдресаЯчеек)

	Дано Я открываю основную форму регистра сведений "АдресаЯчеек"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений АдресаЯчеек"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений АдресаЯчеек"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Блокировки документов" (БлокировкиДокументов)

	Дано Я открываю основную форму регистра сведений "БлокировкиДокументов"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений БлокировкиДокументов"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений БлокировкиДокументов"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Версии подсистем" (ВерсииПодсистем)

	Дано Я открываю основную форму регистра сведений "ВерсииПодсистем"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ВерсииПодсистем"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ВерсииПодсистем"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Вместимость типов мест хранения" (ВместимостьТиповМестХранения)

	Дано Я открываю основную форму регистра сведений "ВместимостьТиповМестХранения"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ВместимостьТиповМестХранения"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ВместимостьТиповМестХранения"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Группы значений доступа" (ГруппыЗначенийДоступа)

	Дано Я открываю основную форму регистра сведений "ГруппыЗначенийДоступа"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ГруппыЗначенийДоступа"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ГруппыЗначенийДоступа"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Даты запрета изменения (загрузки) данных" (ДатыЗапретаИзменения)

	Дано Я открываю основную форму регистра сведений "ДатыЗапретаИзменения"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ДатыЗапретаИзменения"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ДатыЗапретаИзменения"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Двоичные данные файлов" (ДвоичныеДанныеФайлов)

	Дано Я открываю основную форму регистра сведений "ДвоичныеДанныеФайлов"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ДвоичныеДанныеФайлов"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ДвоичныеДанныеФайлов"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Документы физических лиц" (ДокументыФизическихЛиц)

	Дано Я открываю основную форму регистра сведений "ДокументыФизическихЛиц"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ДокументыФизическихЛиц"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ДокументыФизическихЛиц"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Доступные состояния мест хранения" (ДоступныеСостоянияМХ)

	Дано Я открываю основную форму регистра сведений "ДоступныеСостоянияМХ"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ДоступныеСостоянияМХ"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ДоступныеСостоянияМХ"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Доступные состояния объектов хранения" (ДоступныеСостоянияОХ)

	Дано Я открываю основную форму регистра сведений "ДоступныеСостоянияОХ"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ДоступныеСостоянияОХ"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ДоступныеСостоянияОХ"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Зависимости прав доступа" (ЗависимостиПравДоступа)

	Дано Я открываю основную форму регистра сведений "ЗависимостиПравДоступа"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ЗависимостиПравДоступа"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ЗависимостиПравДоступа"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Значения групп доступа" (ЗначенияГруппДоступа)

	Дано Я открываю основную форму регистра сведений "ЗначенияГруппДоступа"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ЗначенияГруппДоступа"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ЗначенияГруппДоступа"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Значения групп доступа по умолчанию" (ЗначенияГруппДоступаПоУмолчанию)

	Дано Я открываю основную форму регистра сведений "ЗначенияГруппДоступаПоУмолчанию"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ЗначенияГруппДоступаПоУмолчанию"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ЗначенияГруппДоступаПоУмолчанию"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Зоны объектов хранения" (ЗоныОбъектовХранения)

	Дано Я открываю основную форму регистра сведений "ЗоныОбъектовХранения"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ЗоныОбъектовХранения"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ЗоныОбъектовХранения"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Зоны по документам резерва" (ЗоныПоДокументамРезерва)

	Дано Я открываю основную форму регистра сведений "ЗоныПоДокументамРезерва"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ЗоныПоДокументамРезерва"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ЗоныПоДокументамРезерва"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Идентификаторы объектов версий расширений" (ИдентификаторыОбъектовВерсийРасширений)

	Дано Я открываю основную форму регистра сведений "ИдентификаторыОбъектовВерсийРасширений"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ИдентификаторыОбъектовВерсийРасширений"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ИдентификаторыОбъектовВерсийРасширений"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Исполнители задач" (ИсполнителиЗадач)

	Дано Я открываю основную форму регистра сведений "ИсполнителиЗадач"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ИсполнителиЗадач"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ИсполнителиЗадач"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Используемые виды доступа" (ИспользуемыеВидыДоступа)

	Дано Я открываю основную форму регистра сведений "ИспользуемыеВидыДоступа"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ИспользуемыеВидыДоступа"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ИспользуемыеВидыДоступа"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Используемые виды доступа по таблицам" (ИспользуемыеВидыДоступаПоТаблицам)

	Дано Я открываю основную форму регистра сведений "ИспользуемыеВидыДоступаПоТаблицам"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ИспользуемыеВидыДоступаПоТаблицам"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ИспользуемыеВидыДоступаПоТаблицам"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "История получения задач исполнителями" (ИсторияПолученияЗадачИсполнителями)

	Дано Я открываю основную форму регистра сведений "ИсторияПолученияЗадачИсполнителями"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ИсторияПолученияЗадачИсполнителями"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ИсторияПолученияЗадачИсполнителями"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Классификация объектов хранения" (КлассификацияОбъектовХранения)

	Дано Я открываю основную форму регистра сведений "КлассификацияОбъектовХранения"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений КлассификацияОбъектовХранения"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений КлассификацияОбъектовХранения"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Ключи доступа внешних пользователей" (КлючиДоступаВнешнихПользователей)

	Дано Я открываю основную форму регистра сведений "КлючиДоступаВнешнихПользователей"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений КлючиДоступаВнешнихПользователей"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений КлючиДоступаВнешнихПользователей"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Ключи доступа групп доступа" (КлючиДоступаГруппДоступа)

	Дано Я открываю основную форму регистра сведений "КлючиДоступаГруппДоступа"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений КлючиДоступаГруппДоступа"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений КлючиДоступаГруппДоступа"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Ключи доступа к объектам" (КлючиДоступаКОбъектам)

	Дано Я открываю основную форму регистра сведений "КлючиДоступаКОбъектам"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений КлючиДоступаКОбъектам"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений КлючиДоступаКОбъектам"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Ключи доступа к регистрам" (КлючиДоступаКРегистрам)

	Дано Я открываю основную форму регистра сведений "КлючиДоступаКРегистрам"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений КлючиДоступаКРегистрам"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений КлючиДоступаКРегистрам"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Ключи доступа наборов групп доступа" (КлючиДоступаНаборовГруппДоступа)

	Дано Я открываю основную форму регистра сведений "КлючиДоступаНаборовГруппДоступа"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений КлючиДоступаНаборовГруппДоступа"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений КлючиДоступаНаборовГруппДоступа"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Ключи доступа пользователей" (КлючиДоступаПользователей)

	Дано Я открываю основную форму регистра сведений "КлючиДоступаПользователей"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений КлючиДоступаПользователей"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений КлючиДоступаПользователей"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Курсы валют" (КурсыВалют)

	Дано Я открываю основную форму регистра сведений "КурсыВалют"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений КурсыВалют"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений КурсыВалют"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Кэш программных интерфейсов" (КэшПрограммныхИнтерфейсов)

	Дано Я открываю основную форму регистра сведений "КэшПрограммныхИнтерфейсов"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений КэшПрограммныхИнтерфейсов"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений КэшПрограммныхИнтерфейсов"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Наборы значений доступа" (НаборыЗначенийДоступа)

	Дано Я открываю основную форму регистра сведений "НаборыЗначенийДоступа"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений НаборыЗначенийДоступа"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений НаборыЗначенийДоступа"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Наследование настроек прав объектов" (НаследованиеНастроекПравОбъектов)

	Дано Я открываю основную форму регистра сведений "НаследованиеНастроекПравОбъектов"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений НаследованиеНастроекПравОбъектов"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений НаследованиеНастроекПравОбъектов"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Настройки запаса годности" (НастройкиЗапасаГодности)

	Дано Я открываю основную форму регистра сведений "НастройкиЗапасаГодности"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений НастройкиЗапасаГодности"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений НастройкиЗапасаГодности"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Настройки очистки файлов" (НастройкиОчисткиФайлов)

	Дано Я открываю основную форму регистра сведений "НастройкиОчисткиФайлов"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений НастройкиОчисткиФайлов"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений НастройкиОчисткиФайлов"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Настройки прав объектов" (НастройкиПравОбъектов)

	Дано Я открываю основную форму регистра сведений "НастройкиПравОбъектов"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений НастройкиПравОбъектов"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений НастройкиПравОбъектов"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Настройки синхронизации файлов" (НастройкиСинхронизацииФайлов)

	Дано Я открываю основную форму регистра сведений "НастройкиСинхронизацииФайлов"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений НастройкиСинхронизацииФайлов"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений НастройкиСинхронизацииФайлов"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Настройки учетных записей электронной почты" (НастройкиУчетныхЗаписейЭлектроннойПочты)

	Дано Я открываю основную форму регистра сведений "НастройкиУчетныхЗаписейЭлектроннойПочты"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений НастройкиУчетныхЗаписейЭлектроннойПочты"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений НастройкиУчетныхЗаписейЭлектроннойПочты"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Обновление ключей доступа к данным" (ОбновлениеКлючейДоступаКДанным)

	Дано Я открываю основную форму регистра сведений "ОбновлениеКлючейДоступаКДанным"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ОбновлениеКлючейДоступаКДанным"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ОбновлениеКлючейДоступаКДанным"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Обновление ключей доступа пользователей" (ОбновлениеКлючейДоступаПользователей)

	Дано Я открываю основную форму регистра сведений "ОбновлениеКлючейДоступаПользователей"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ОбновлениеКлючейДоступаПользователей"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ОбновлениеКлючейДоступаПользователей"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Обновление ключей доступа текущие задания" (ОбновлениеКлючейДоступаТекущиеЗадания)

	Дано Я открываю основную форму регистра сведений "ОбновлениеКлючейДоступаТекущиеЗадания"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ОбновлениеКлючейДоступаТекущиеЗадания"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ОбновлениеКлючейДоступаТекущиеЗадания"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Операции статистики" (ОперацииСтатистики)

	Дано Я открываю основную форму регистра сведений "ОперацииСтатистики"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ОперацииСтатистики"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ОперацииСтатистики"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Очередь документов для пересчета статуса" (ОчередьДокументовДляПересчетаСтатуса)

	Дано Я открываю основную форму регистра сведений "ОчередьДокументовДляПересчетаСтатуса"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ОчередьДокументовДляПересчетаСтатуса"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ОчередьДокументовДляПересчетаСтатуса"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Очередь обработчиков" (ОчередьОбработчиков)

	Дано Я открываю основную форму регистра сведений "ОчередьОбработчиков"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ОчередьОбработчиков"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ОчередьОбработчиков"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Очередь пересчета заполненности" (ОчередьПересчетаЗаполненности)

	Дано Я открываю основную форму регистра сведений "ОчередьПересчетаЗаполненности"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ОчередьПересчетаЗаполненности"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ОчередьПересчетаЗаполненности"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Очередь печати" (ОчередьПечати)

	Дано Я открываю основную форму регистра сведений "ОчередьПечати"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ОчередьПечати"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ОчередьПечати"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Очередь событий" (ОчередьСобытий)

	Дано Я открываю основную форму регистра сведений "ОчередьСобытий"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ОчередьСобытий"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ОчередьСобытий"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Параметры ограничения доступа" (ПараметрыОграниченияДоступа)

	Дано Я открываю основную форму регистра сведений "ПараметрыОграниченияДоступа"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ПараметрыОграниченияДоступа"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ПараметрыОграниченияДоступа"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Параметры работы версий расширений" (ПараметрыРаботыВерсийРасширений)

	Дано Я открываю основную форму регистра сведений "ПараметрыРаботыВерсийРасширений"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ПараметрыРаботыВерсийРасширений"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ПараметрыРаботыВерсийРасширений"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Параметры работы программы" (ПараметрыРаботыПрограммы)

	Дано Я открываю основную форму регистра сведений "ПараметрыРаботыПрограммы"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ПараметрыРаботыПрограммы"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ПараметрыРаботыПрограммы"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Права ролей" (ПраваРолей)

	Дано Я открываю основную форму регистра сведений "ПраваРолей"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ПраваРолей"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ПраваРолей"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Пути к программам электронной подписи и шифрования на серверах Linux" (ПутиКПрограммамЭлектроннойПодписиИШифрованияНаСерверахLinux)

	Дано Я открываю основную форму регистра сведений "ПутиКПрограммамЭлектроннойПодписиИШифрованияНаСерверахLinux"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ПутиКПрограммамЭлектроннойПодписиИШифрованияНаСерверахLinux"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ПутиКПрограммамЭлектроннойПодписиИШифрованияНаСерверахLinux"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Сведения о пользователях" (СведенияОПользователях)

	Дано Я открываю основную форму регистра сведений "СведенияОПользователях"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений СведенияОПользователях"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений СведенияОПользователях"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Сеансы версий расширений" (СеансыВерсийРасширений)

	Дано Я открываю основную форму регистра сведений "СеансыВерсийРасширений"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений СеансыВерсийРасширений"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений СеансыВерсийРасширений"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Служебное хранилище данных" (СлужебноеХранилищеДанных)

	Дано Я открываю основную форму регистра сведений "СлужебноеХранилищеДанных"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений СлужебноеХранилищеДанных"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений СлужебноеХранилищеДанных"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Соответствие идентификаторов" (СоответствиеИдентификаторов)

	Дано Я открываю основную форму регистра сведений "СоответствиеИдентификаторов"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений СоответствиеИдентификаторов"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений СоответствиеИдентификаторов"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Составы групп пользователей" (СоставыГруппПользователей)

	Дано Я открываю основную форму регистра сведений "СоставыГруппПользователей"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений СоставыГруппПользователей"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений СоставыГруппПользователей"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Состояния оригиналов первичных документов" (СостоянияОригиналовПервичныхДокументов)

	Дано Я открываю основную форму регистра сведений "СостоянияОригиналовПервичныхДокументов"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений СостоянияОригиналовПервичныхДокументов"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений СостоянияОригиналовПервичныхДокументов"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Строки маркировки (места хранения)" (СтрокиМаркировкиМестаХранения)

	Дано Я открываю основную форму регистра сведений "СтрокиМаркировкиМестаХранения"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений СтрокиМаркировкиМестаХранения"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений СтрокиМаркировкиМестаХранения"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Строки маркировки (объекты хранения)" (СтрокиМаркировкиОбъектыХранения)

	Дано Я открываю основную форму регистра сведений "СтрокиМаркировкиОбъектыХранения"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений СтрокиМаркировкиОбъектыХранения"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений СтрокиМаркировкиОбъектыХранения"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Строки пересчетов (места хранения)" (СтрокиПересчетовМестаХранения)

	Дано Я открываю основную форму регистра сведений "СтрокиПересчетовМестаХранения"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений СтрокиПересчетовМестаХранения"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений СтрокиПересчетовМестаХранения"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Строки пересчетов (объекты хранения)" (СтрокиПересчетовОбъектыХранения)

	Дано Я открываю основную форму регистра сведений "СтрокиПересчетовОбъектыХранения"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений СтрокиПересчетовОбъектыХранения"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений СтрокиПересчетовОбъектыХранения"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Строки заказов на комплектацию" (СтрокиПлановКомплектации)

	Дано Я открываю основную форму регистра сведений "СтрокиПлановКомплектации"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений СтрокиПлановКомплектации"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений СтрокиПлановКомплектации"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Строки планов отгрузки / заказов" (СтрокиПлановОтгрузки)

	Дано Я открываю основную форму регистра сведений "СтрокиПлановОтгрузки"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений СтрокиПлановОтгрузки"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений СтрокиПлановОтгрузки"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Строки планов отгрузки / заказов на отгрузку грузовых мест" (СтрокиПлановОтгрузкиГрузовыхМест)

	Дано Я открываю основную форму регистра сведений "СтрокиПлановОтгрузкиГрузовыхМест"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений СтрокиПлановОтгрузкиГрузовыхМест"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений СтрокиПлановОтгрузкиГрузовыхМест"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Строки планов поступления / ожидаемых поступлений" (СтрокиПлановПоступления)

	Дано Я открываю основную форму регистра сведений "СтрокиПлановПоступления"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений СтрокиПлановПоступления"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений СтрокиПлановПоступления"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Строки планов поступления / ожидаемых поступлений грузовых мест" (СтрокиПлановПоступленияГрузовыхМест)

	Дано Я открываю основную форму регистра сведений "СтрокиПлановПоступленияГрузовыхМест"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений СтрокиПлановПоступленияГрузовыхМест"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений СтрокиПлановПоступленияГрузовыхМест"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Таблицы групп доступа" (ТаблицыГруппДоступа)

	Дано Я открываю основную форму регистра сведений "ТаблицыГруппДоступа"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ТаблицыГруппДоступа"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ТаблицыГруппДоступа"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Штрихкоды номенклатуры" (ШтрихкодыНоменклатуры)

	Дано Я открываю основную форму регистра сведений "ШтрихкодыНоменклатуры"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ШтрихкодыНоменклатуры"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ШтрихкодыНоменклатуры"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Штрихкоды объектов хранения" (ШтрихкодыОбъектовХранения)

	Дано Я открываю основную форму регистра сведений "ШтрихкодыОбъектовХранения"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ШтрихкодыОбъектовХранения"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ШтрихкодыОбъектовХранения"
	И Я закрываю текущее окно

Сценарий: Открытие формы регистра сведений "Ячейки объектов хранения" (ЯчейкиОбъектовХранения)

	Дано Я открываю основную форму регистра сведений "ЯчейкиОбъектовХранения"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ЯчейкиОбъектовХранения"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму регистра сведений ЯчейкиОбъектовХранения"
	И Я закрываю текущее окно
