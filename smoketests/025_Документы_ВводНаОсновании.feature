﻿
#language: ru

@tree
@SmokeTest

Функциональность: Дымовые тесты - Документы - ВводНаОсновании
# Конфигурация: WMS X5
# Версия: 5.0.9.51

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	И Я закрыл все окна клиентского приложения

Сценарий: ВводНаОсновании элемента документа "Встреча" (Встреча)

	* Ищем ссылку на существующий элемент
		И я выполняю код встроенного языка на сервере
		"""bsl
			Объект.ЗначениеНаСервере = НЕОПРЕДЕЛЕНО;
			Запрос = Новый Запрос(
				"ВЫБРАТЬ ПЕРВЫЕ 1
				|	ТекДанныеИсточник.Ссылка КАК Ссылка
				|ИЗ
				|	Документ.Встреча КАК ТекДанныеИсточник
				|ГДЕ
				|	НЕ ТекДанныеИсточник.ПометкаУдаления
				|	");
			ВыборкаЗапроса = Запрос.Выполнить().Выбрать();
			Если ВыборкаЗапроса.Следующий() Тогда
				Объект.ЗначениеНаСервере = ПолучитьНавигационнуюСсылку(ВыборкаЗапроса.Ссылка);
			КонецЕсли;
		"""
		И Я запоминаю значение выражения 'Объект.ЗначениеНаСервере' в переменную 'НавигационнаяСсылка'

	Если 'ЗначениеЗаполнено($НавигационнаяСсылка$)' Тогда

		* Отрываем форму существующего элемента
			И Я открываю навигационную ссылку '$НавигационнаяСсылка$'
			Если появилось предупреждение Тогда
				Тогда я вызываю исключение "Не удалось открыть существующий элемент документа Встреча"
			Если имя текущей формы "ErrorWindow" Тогда
				Тогда я вызываю исключение "Не удалось открыть существующий элемент документа Встреча"
			И я запоминаю заголовок формы в переменную 'ЗаголовокФормы'

		* Введем на основании Документ Встреча
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаДокументВстречаСоздатьНаОсновании' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаДокументВстречаСоздатьНаОсновании'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ Встреча на основании документа Встреча
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ Встреча на основании документа Встреча
				Тогда открылось окно '* (создание)'
				И Я закрываю окно '* (создание)'

		* Введем на основании Документ ЗапланированноеВзаимодействие
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаДокументЗапланированноеВзаимодействиеСоздатьНаОсновании' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаДокументЗапланированноеВзаимодействиеСоздатьНаОсновании'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ ЗапланированноеВзаимодействие на основании документа Встреча
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ ЗапланированноеВзаимодействие на основании документа Встреча
				Тогда открылось окно '* (создание)'
				И Я закрываю окно '* (создание)'

		* Введем на основании Документ СообщениеSMS
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаДокументСообщениеSMSСоздатьНаОсновании' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаДокументСообщениеSMSСоздатьНаОсновании'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ СообщениеSMS на основании документа Встреча
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ СообщениеSMS на основании документа Встреча
				Тогда открылось окно '* (создание)'
				И Я закрываю окно '* (создание)'

		* Введем на основании Документ ТелефонныйЗвонок
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаДокументТелефонныйЗвонокСоздатьНаОсновании' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаДокументТелефонныйЗвонокСоздатьНаОсновании'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ ТелефонныйЗвонок на основании документа Встреча
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ ТелефонныйЗвонок на основании документа Встреча
				Тогда открылось окно '* (создание)'
				И Я закрываю окно '* (создание)'

		* Введем на основании Документ ЭлектронноеПисьмоИсходящее
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаДокументЭлектронноеПисьмоИсходящееСоздатьНаОсновании' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаДокументЭлектронноеПисьмоИсходящееСоздатьНаОсновании'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ ЭлектронноеПисьмоИсходящее на основании документа Встреча
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ ЭлектронноеПисьмоИсходящее на основании документа Встреча
				Тогда открылось окно '* (создание)'
				И Я закрываю окно '* (создание)'

Сценарий: ВводНаОсновании элемента документа "Заказ на отгрузку" (ЗаказНаОтгрузку)

	* Ищем ссылку на существующий элемент
		И я выполняю код встроенного языка на сервере
		"""bsl
			Объект.ЗначениеНаСервере = НЕОПРЕДЕЛЕНО;
			Запрос = Новый Запрос(
				"ВЫБРАТЬ ПЕРВЫЕ 1
				|	ТекДанныеИсточник.Ссылка КАК Ссылка
				|ИЗ
				|	Документ.ЗаказНаОтгрузку КАК ТекДанныеИсточник
				|ГДЕ
				|	НЕ ТекДанныеИсточник.ПометкаУдаления
				|	И ТекДанныеИсточник.Проведен");
			ВыборкаЗапроса = Запрос.Выполнить().Выбрать();
			Если ВыборкаЗапроса.Следующий() Тогда
				Объект.ЗначениеНаСервере = ПолучитьНавигационнуюСсылку(ВыборкаЗапроса.Ссылка);
			КонецЕсли;
		"""
		И Я запоминаю значение выражения 'Объект.ЗначениеНаСервере' в переменную 'НавигационнаяСсылка'

	Если 'ЗначениеЗаполнено($НавигационнаяСсылка$)' Тогда

		* Отрываем форму существующего элемента
			И Я открываю навигационную ссылку '$НавигационнаяСсылка$'
			Если появилось предупреждение Тогда
				Тогда я вызываю исключение "Не удалось открыть существующий элемент документа ЗаказНаОтгрузку"
			Если имя текущей формы "ErrorWindow" Тогда
				Тогда я вызываю исключение "Не удалось открыть существующий элемент документа ЗаказНаОтгрузку"
			И я запоминаю заголовок формы в переменную 'ЗаголовокФормы'

		* Введем на основании Документ ПланПоступления
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаДокументПланПоступленияСоздатьНаОсновании' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаДокументПланПоступленияСоздатьНаОсновании'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ ПланПоступления на основании документа ЗаказНаОтгрузку
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ ПланПоступления на основании документа ЗаказНаОтгрузку
				Тогда открылось окно '* (создание)'
				И Я закрываю окно '* (создание)'

Сценарий: ВводНаОсновании элемента документа "Запланированное взаимодействие" (ЗапланированноеВзаимодействие)

	* Ищем ссылку на существующий элемент
		И я выполняю код встроенного языка на сервере
		"""bsl
			Объект.ЗначениеНаСервере = НЕОПРЕДЕЛЕНО;
			Запрос = Новый Запрос(
				"ВЫБРАТЬ ПЕРВЫЕ 1
				|	ТекДанныеИсточник.Ссылка КАК Ссылка
				|ИЗ
				|	Документ.ЗапланированноеВзаимодействие КАК ТекДанныеИсточник
				|ГДЕ
				|	НЕ ТекДанныеИсточник.ПометкаУдаления
				|	");
			ВыборкаЗапроса = Запрос.Выполнить().Выбрать();
			Если ВыборкаЗапроса.Следующий() Тогда
				Объект.ЗначениеНаСервере = ПолучитьНавигационнуюСсылку(ВыборкаЗапроса.Ссылка);
			КонецЕсли;
		"""
		И Я запоминаю значение выражения 'Объект.ЗначениеНаСервере' в переменную 'НавигационнаяСсылка'

	Если 'ЗначениеЗаполнено($НавигационнаяСсылка$)' Тогда

		* Отрываем форму существующего элемента
			И Я открываю навигационную ссылку '$НавигационнаяСсылка$'
			Если появилось предупреждение Тогда
				Тогда я вызываю исключение "Не удалось открыть существующий элемент документа ЗапланированноеВзаимодействие"
			Если имя текущей формы "ErrorWindow" Тогда
				Тогда я вызываю исключение "Не удалось открыть существующий элемент документа ЗапланированноеВзаимодействие"
			И я запоминаю заголовок формы в переменную 'ЗаголовокФормы'

		* Введем на основании Документ Встреча
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаДокументВстречаСоздатьНаОсновании' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаДокументВстречаСоздатьНаОсновании'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ Встреча на основании документа ЗапланированноеВзаимодействие
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ Встреча на основании документа ЗапланированноеВзаимодействие
				Тогда открылось окно '* (создание)'
				И Я закрываю окно '* (создание)'

		* Введем на основании Документ СообщениеSMS
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаДокументСообщениеSMSСоздатьНаОсновании' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаДокументСообщениеSMSСоздатьНаОсновании'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ СообщениеSMS на основании документа ЗапланированноеВзаимодействие
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ СообщениеSMS на основании документа ЗапланированноеВзаимодействие
				Тогда открылось окно '* (создание)'
				И Я закрываю окно '* (создание)'

		* Введем на основании Документ ТелефонныйЗвонок
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаДокументТелефонныйЗвонокСоздатьНаОсновании' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаДокументТелефонныйЗвонокСоздатьНаОсновании'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ ТелефонныйЗвонок на основании документа ЗапланированноеВзаимодействие
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ ТелефонныйЗвонок на основании документа ЗапланированноеВзаимодействие
				Тогда открылось окно '* (создание)'
				И Я закрываю окно '* (создание)'

		* Введем на основании Документ ЭлектронноеПисьмоИсходящее
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаДокументЭлектронноеПисьмоИсходящееСоздатьНаОсновании' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаДокументЭлектронноеПисьмоИсходящееСоздатьНаОсновании'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ ЭлектронноеПисьмоИсходящее на основании документа ЗапланированноеВзаимодействие
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ ЭлектронноеПисьмоИсходящее на основании документа ЗапланированноеВзаимодействие
				Тогда открылось окно '* (создание)'
				И Я закрываю окно '* (создание)'

Сценарий: ВводНаОсновании элемента документа "Ожидаемое поступление" (ОжидаемоеПоступление)

	* Ищем ссылку на существующий элемент
		И я выполняю код встроенного языка на сервере
		"""bsl
			Объект.ЗначениеНаСервере = НЕОПРЕДЕЛЕНО;
			Запрос = Новый Запрос(
				"ВЫБРАТЬ ПЕРВЫЕ 1
				|	ТекДанныеИсточник.Ссылка КАК Ссылка
				|ИЗ
				|	Документ.ОжидаемоеПоступление КАК ТекДанныеИсточник
				|ГДЕ
				|	НЕ ТекДанныеИсточник.ПометкаУдаления
				|	И ТекДанныеИсточник.Проведен");
			ВыборкаЗапроса = Запрос.Выполнить().Выбрать();
			Если ВыборкаЗапроса.Следующий() Тогда
				Объект.ЗначениеНаСервере = ПолучитьНавигационнуюСсылку(ВыборкаЗапроса.Ссылка);
			КонецЕсли;
		"""
		И Я запоминаю значение выражения 'Объект.ЗначениеНаСервере' в переменную 'НавигационнаяСсылка'

	Если 'ЗначениеЗаполнено($НавигационнаяСсылка$)' Тогда

		* Отрываем форму существующего элемента
			И Я открываю навигационную ссылку '$НавигационнаяСсылка$'
			Если появилось предупреждение Тогда
				Тогда я вызываю исключение "Не удалось открыть существующий элемент документа ОжидаемоеПоступление"
			Если имя текущей формы "ErrorWindow" Тогда
				Тогда я вызываю исключение "Не удалось открыть существующий элемент документа ОжидаемоеПоступление"
			И я запоминаю заголовок формы в переменную 'ЗаголовокФормы'

		* Введем на основании Документ ПланОтгрузки
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаДокументПланОтгрузкиСоздатьНаОсновании' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаДокументПланОтгрузкиСоздатьНаОсновании'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ ПланОтгрузки на основании документа ОжидаемоеПоступление
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ ПланОтгрузки на основании документа ОжидаемоеПоступление
				Тогда открылось окно '* (создание)'
				И Я закрываю окно '* (создание)'

Сценарий: ВводНаОсновании элемента документа "Согласие на обработку персональных данных" (СогласиеНаОбработкуПерсональныхДанных)

	* Ищем ссылку на существующий элемент
		И я выполняю код встроенного языка на сервере
		"""bsl
			Объект.ЗначениеНаСервере = НЕОПРЕДЕЛЕНО;
			Запрос = Новый Запрос(
				"ВЫБРАТЬ ПЕРВЫЕ 1
				|	ТекДанныеИсточник.Ссылка КАК Ссылка
				|ИЗ
				|	Документ.СогласиеНаОбработкуПерсональныхДанных КАК ТекДанныеИсточник
				|ГДЕ
				|	НЕ ТекДанныеИсточник.ПометкаУдаления
				|	И ТекДанныеИсточник.Проведен");
			ВыборкаЗапроса = Запрос.Выполнить().Выбрать();
			Если ВыборкаЗапроса.Следующий() Тогда
				Объект.ЗначениеНаСервере = ПолучитьНавигационнуюСсылку(ВыборкаЗапроса.Ссылка);
			КонецЕсли;
		"""
		И Я запоминаю значение выражения 'Объект.ЗначениеНаСервере' в переменную 'НавигационнаяСсылка'

	Если 'ЗначениеЗаполнено($НавигационнаяСсылка$)' Тогда

		* Отрываем форму существующего элемента
			И Я открываю навигационную ссылку '$НавигационнаяСсылка$'
			Если появилось предупреждение Тогда
				Тогда я вызываю исключение "Не удалось открыть существующий элемент документа СогласиеНаОбработкуПерсональныхДанных"
			Если имя текущей формы "ErrorWindow" Тогда
				Тогда я вызываю исключение "Не удалось открыть существующий элемент документа СогласиеНаОбработкуПерсональныхДанных"
			И я запоминаю заголовок формы в переменную 'ЗаголовокФормы'

		* Введем на основании Документ ОтзывСогласияНаОбработкуПерсональныхДанных
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаДокументОтзывСогласияНаОбработкуПерсональныхДанныхСоздатьНаОсновании' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаДокументОтзывСогласияНаОбработкуПерсональныхДанныхСоздатьНаОсновании'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ ОтзывСогласияНаОбработкуПерсональныхДанных на основании документа СогласиеНаОбработкуПерсональныхДанных
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ ОтзывСогласияНаОбработкуПерсональныхДанных на основании документа СогласиеНаОбработкуПерсональныхДанных
				Тогда открылось окно '* (создание)'
				И Я закрываю окно '* (создание)'

Сценарий: ВводНаОсновании элемента документа "Сообщение SMS" (СообщениеSMS)

	* Ищем ссылку на существующий элемент
		И я выполняю код встроенного языка на сервере
		"""bsl
			Объект.ЗначениеНаСервере = НЕОПРЕДЕЛЕНО;
			Запрос = Новый Запрос(
				"ВЫБРАТЬ ПЕРВЫЕ 1
				|	ТекДанныеИсточник.Ссылка КАК Ссылка
				|ИЗ
				|	Документ.СообщениеSMS КАК ТекДанныеИсточник
				|ГДЕ
				|	НЕ ТекДанныеИсточник.ПометкаУдаления
				|	");
			ВыборкаЗапроса = Запрос.Выполнить().Выбрать();
			Если ВыборкаЗапроса.Следующий() Тогда
				Объект.ЗначениеНаСервере = ПолучитьНавигационнуюСсылку(ВыборкаЗапроса.Ссылка);
			КонецЕсли;
		"""
		И Я запоминаю значение выражения 'Объект.ЗначениеНаСервере' в переменную 'НавигационнаяСсылка'

	Если 'ЗначениеЗаполнено($НавигационнаяСсылка$)' Тогда

		* Отрываем форму существующего элемента
			И Я открываю навигационную ссылку '$НавигационнаяСсылка$'
			Если появилось предупреждение Тогда
				Тогда я вызываю исключение "Не удалось открыть существующий элемент документа СообщениеSMS"
			Если имя текущей формы "ErrorWindow" Тогда
				Тогда я вызываю исключение "Не удалось открыть существующий элемент документа СообщениеSMS"
			И я запоминаю заголовок формы в переменную 'ЗаголовокФормы'

		* Введем на основании Документ Встреча
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаДокументВстречаСоздатьНаОсновании' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаДокументВстречаСоздатьНаОсновании'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ Встреча на основании документа СообщениеSMS
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ Встреча на основании документа СообщениеSMS
				Тогда открылось окно '* (создание)'
				И Я закрываю окно '* (создание)'

		* Введем на основании Документ ЗапланированноеВзаимодействие
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаДокументЗапланированноеВзаимодействиеСоздатьНаОсновании' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаДокументЗапланированноеВзаимодействиеСоздатьНаОсновании'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ ЗапланированноеВзаимодействие на основании документа СообщениеSMS
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ ЗапланированноеВзаимодействие на основании документа СообщениеSMS
				Тогда открылось окно '* (создание)'
				И Я закрываю окно '* (создание)'

		* Введем на основании Документ СообщениеSMS
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаДокументСообщениеSMSСоздатьНаОсновании' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаДокументСообщениеSMSСоздатьНаОсновании'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ СообщениеSMS на основании документа СообщениеSMS
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ СообщениеSMS на основании документа СообщениеSMS
				Тогда открылось окно '* (создание)'
				И Я закрываю окно '* (создание)'

		* Введем на основании Документ ТелефонныйЗвонок
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаДокументТелефонныйЗвонокСоздатьНаОсновании' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаДокументТелефонныйЗвонокСоздатьНаОсновании'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ ТелефонныйЗвонок на основании документа СообщениеSMS
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ ТелефонныйЗвонок на основании документа СообщениеSMS
				Тогда открылось окно '* (создание)'
				И Я закрываю окно '* (создание)'

		* Введем на основании Документ ЭлектронноеПисьмоИсходящее
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаДокументЭлектронноеПисьмоИсходящееСоздатьНаОсновании' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаДокументЭлектронноеПисьмоИсходящееСоздатьНаОсновании'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ ЭлектронноеПисьмоИсходящее на основании документа СообщениеSMS
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ ЭлектронноеПисьмоИсходящее на основании документа СообщениеSMS
				Тогда открылось окно '* (создание)'
				И Я закрываю окно '* (создание)'

Сценарий: ВводНаОсновании элемента документа "Телефонный звонок" (ТелефонныйЗвонок)

	* Ищем ссылку на существующий элемент
		И я выполняю код встроенного языка на сервере
		"""bsl
			Объект.ЗначениеНаСервере = НЕОПРЕДЕЛЕНО;
			Запрос = Новый Запрос(
				"ВЫБРАТЬ ПЕРВЫЕ 1
				|	ТекДанныеИсточник.Ссылка КАК Ссылка
				|ИЗ
				|	Документ.ТелефонныйЗвонок КАК ТекДанныеИсточник
				|ГДЕ
				|	НЕ ТекДанныеИсточник.ПометкаУдаления
				|	");
			ВыборкаЗапроса = Запрос.Выполнить().Выбрать();
			Если ВыборкаЗапроса.Следующий() Тогда
				Объект.ЗначениеНаСервере = ПолучитьНавигационнуюСсылку(ВыборкаЗапроса.Ссылка);
			КонецЕсли;
		"""
		И Я запоминаю значение выражения 'Объект.ЗначениеНаСервере' в переменную 'НавигационнаяСсылка'

	Если 'ЗначениеЗаполнено($НавигационнаяСсылка$)' Тогда

		* Отрываем форму существующего элемента
			И Я открываю навигационную ссылку '$НавигационнаяСсылка$'
			Если появилось предупреждение Тогда
				Тогда я вызываю исключение "Не удалось открыть существующий элемент документа ТелефонныйЗвонок"
			Если имя текущей формы "ErrorWindow" Тогда
				Тогда я вызываю исключение "Не удалось открыть существующий элемент документа ТелефонныйЗвонок"
			И я запоминаю заголовок формы в переменную 'ЗаголовокФормы'

		* Введем на основании Документ Встреча
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаДокументВстречаСоздатьНаОсновании' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаДокументВстречаСоздатьНаОсновании'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ Встреча на основании документа ТелефонныйЗвонок
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ Встреча на основании документа ТелефонныйЗвонок
				Тогда открылось окно '* (создание)'
				И Я закрываю окно '* (создание)'

		* Введем на основании Документ ЗапланированноеВзаимодействие
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаДокументЗапланированноеВзаимодействиеСоздатьНаОсновании' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаДокументЗапланированноеВзаимодействиеСоздатьНаОсновании'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ ЗапланированноеВзаимодействие на основании документа ТелефонныйЗвонок
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ ЗапланированноеВзаимодействие на основании документа ТелефонныйЗвонок
				Тогда открылось окно '* (создание)'
				И Я закрываю окно '* (создание)'

		* Введем на основании Документ СообщениеSMS
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаДокументСообщениеSMSСоздатьНаОсновании' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаДокументСообщениеSMSСоздатьНаОсновании'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ СообщениеSMS на основании документа ТелефонныйЗвонок
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ СообщениеSMS на основании документа ТелефонныйЗвонок
				Тогда открылось окно '* (создание)'
				И Я закрываю окно '* (создание)'

		* Введем на основании Документ ТелефонныйЗвонок
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаДокументТелефонныйЗвонокСоздатьНаОсновании' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаДокументТелефонныйЗвонокСоздатьНаОсновании'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ ТелефонныйЗвонок на основании документа ТелефонныйЗвонок
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ ТелефонныйЗвонок на основании документа ТелефонныйЗвонок
				Тогда открылось окно '* (создание)'
				И Я закрываю окно '* (создание)'

		* Введем на основании Документ ЭлектронноеПисьмоИсходящее
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаДокументЭлектронноеПисьмоИсходящееСоздатьНаОсновании' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаДокументЭлектронноеПисьмоИсходящееСоздатьНаОсновании'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ ЭлектронноеПисьмоИсходящее на основании документа ТелефонныйЗвонок
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ ЭлектронноеПисьмоИсходящее на основании документа ТелефонныйЗвонок
				Тогда открылось окно '* (создание)'
				И Я закрываю окно '* (создание)'

Сценарий: ВводНаОсновании элемента документа "Электронное письмо входящее" (ЭлектронноеПисьмоВходящее)

	* Ищем ссылку на существующий элемент
		И я выполняю код встроенного языка на сервере
		"""bsl
			Объект.ЗначениеНаСервере = НЕОПРЕДЕЛЕНО;
			Запрос = Новый Запрос(
				"ВЫБРАТЬ ПЕРВЫЕ 1
				|	ТекДанныеИсточник.Ссылка КАК Ссылка
				|ИЗ
				|	Документ.ЭлектронноеПисьмоВходящее КАК ТекДанныеИсточник
				|ГДЕ
				|	НЕ ТекДанныеИсточник.ПометкаУдаления
				|	");
			ВыборкаЗапроса = Запрос.Выполнить().Выбрать();
			Если ВыборкаЗапроса.Следующий() Тогда
				Объект.ЗначениеНаСервере = ПолучитьНавигационнуюСсылку(ВыборкаЗапроса.Ссылка);
			КонецЕсли;
		"""
		И Я запоминаю значение выражения 'Объект.ЗначениеНаСервере' в переменную 'НавигационнаяСсылка'

	Если 'ЗначениеЗаполнено($НавигационнаяСсылка$)' Тогда

		* Отрываем форму существующего элемента
			И Я открываю навигационную ссылку '$НавигационнаяСсылка$'
			Если появилось предупреждение Тогда
				Тогда я вызываю исключение "Не удалось открыть существующий элемент документа ЭлектронноеПисьмоВходящее"
			Если имя текущей формы "ErrorWindow" Тогда
				Тогда я вызываю исключение "Не удалось открыть существующий элемент документа ЭлектронноеПисьмоВходящее"
			И я запоминаю заголовок формы в переменную 'ЗаголовокФормы'

		* Введем на основании Документ Встреча
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаДокументВстречаСоздатьНаОсновании' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаДокументВстречаСоздатьНаОсновании'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ Встреча на основании документа ЭлектронноеПисьмоВходящее
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ Встреча на основании документа ЭлектронноеПисьмоВходящее
				Тогда открылось окно '* (создание)'
				И Я закрываю окно '* (создание)'

		* Введем на основании Документ ЗапланированноеВзаимодействие
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаДокументЗапланированноеВзаимодействиеСоздатьНаОсновании' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаДокументЗапланированноеВзаимодействиеСоздатьНаОсновании'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ ЗапланированноеВзаимодействие на основании документа ЭлектронноеПисьмоВходящее
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ ЗапланированноеВзаимодействие на основании документа ЭлектронноеПисьмоВходящее
				Тогда открылось окно '* (создание)'
				И Я закрываю окно '* (создание)'

		* Введем на основании Документ СообщениеSMS
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаДокументСообщениеSMSСоздатьНаОсновании' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаДокументСообщениеSMSСоздатьНаОсновании'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ СообщениеSMS на основании документа ЭлектронноеПисьмоВходящее
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ СообщениеSMS на основании документа ЭлектронноеПисьмоВходящее
				Тогда открылось окно '* (создание)'
				И Я закрываю окно '* (создание)'

		* Введем на основании Документ ТелефонныйЗвонок
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаДокументТелефонныйЗвонокСоздатьНаОсновании' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаДокументТелефонныйЗвонокСоздатьНаОсновании'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ ТелефонныйЗвонок на основании документа ЭлектронноеПисьмоВходящее
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ ТелефонныйЗвонок на основании документа ЭлектронноеПисьмоВходящее
				Тогда открылось окно '* (создание)'
				И Я закрываю окно '* (создание)'

Сценарий: ВводНаОсновании элемента документа "Электронное письмо исходящее" (ЭлектронноеПисьмоИсходящее)

	* Ищем ссылку на существующий элемент
		И я выполняю код встроенного языка на сервере
		"""bsl
			Объект.ЗначениеНаСервере = НЕОПРЕДЕЛЕНО;
			Запрос = Новый Запрос(
				"ВЫБРАТЬ ПЕРВЫЕ 1
				|	ТекДанныеИсточник.Ссылка КАК Ссылка
				|ИЗ
				|	Документ.ЭлектронноеПисьмоИсходящее КАК ТекДанныеИсточник
				|ГДЕ
				|	НЕ ТекДанныеИсточник.ПометкаУдаления
				|	");
			ВыборкаЗапроса = Запрос.Выполнить().Выбрать();
			Если ВыборкаЗапроса.Следующий() Тогда
				Объект.ЗначениеНаСервере = ПолучитьНавигационнуюСсылку(ВыборкаЗапроса.Ссылка);
			КонецЕсли;
		"""
		И Я запоминаю значение выражения 'Объект.ЗначениеНаСервере' в переменную 'НавигационнаяСсылка'

	Если 'ЗначениеЗаполнено($НавигационнаяСсылка$)' Тогда

		* Отрываем форму существующего элемента
			И Я открываю навигационную ссылку '$НавигационнаяСсылка$'
			Если появилось предупреждение Тогда
				Тогда я вызываю исключение "Не удалось открыть существующий элемент документа ЭлектронноеПисьмоИсходящее"
			Если имя текущей формы "ErrorWindow" Тогда
				Тогда я вызываю исключение "Не удалось открыть существующий элемент документа ЭлектронноеПисьмоИсходящее"
			И я запоминаю заголовок формы в переменную 'ЗаголовокФормы'

		* Введем на основании Документ Встреча
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаДокументВстречаСоздатьНаОсновании' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаДокументВстречаСоздатьНаОсновании'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ Встреча на основании документа ЭлектронноеПисьмоИсходящее
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ Встреча на основании документа ЭлектронноеПисьмоИсходящее
				Тогда открылось окно '* (создание)'
				И Я закрываю окно '* (создание)'

		* Введем на основании Документ ЗапланированноеВзаимодействие
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаДокументЗапланированноеВзаимодействиеСоздатьНаОсновании' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаДокументЗапланированноеВзаимодействиеСоздатьНаОсновании'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ ЗапланированноеВзаимодействие на основании документа ЭлектронноеПисьмоИсходящее
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ ЗапланированноеВзаимодействие на основании документа ЭлектронноеПисьмоИсходящее
				Тогда открылось окно '* (создание)'
				И Я закрываю окно '* (создание)'

		* Введем на основании Документ СообщениеSMS
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаДокументСообщениеSMSСоздатьНаОсновании' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаДокументСообщениеSMSСоздатьНаОсновании'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ СообщениеSMS на основании документа ЭлектронноеПисьмоИсходящее
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ СообщениеSMS на основании документа ЭлектронноеПисьмоИсходящее
				Тогда открылось окно '* (создание)'
				И Я закрываю окно '* (создание)'

		* Введем на основании Документ ТелефонныйЗвонок
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаДокументТелефонныйЗвонокСоздатьНаОсновании' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаДокументТелефонныйЗвонокСоздатьНаОсновании'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ ТелефонныйЗвонок на основании документа ЭлектронноеПисьмоИсходящее
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось ввести Документ ТелефонныйЗвонок на основании документа ЭлектронноеПисьмоИсходящее
				Тогда открылось окно '* (создание)'
				И Я закрываю окно '* (создание)'
