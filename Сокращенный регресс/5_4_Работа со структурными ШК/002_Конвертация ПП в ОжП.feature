﻿#language: ru

@tree

Функционал: [5_4] Работа со структурными штрихкодами

Как тестирвощик я хочу
сконвертировать Ожидаемое поступление 
чтобы провести приему в МК3   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: [002] конвертация ПП в ОжП
	И я закрываю все окна клиентского приложения
	И Запуск Регламентного задания "Создание ожидаемого поступления по плану"
	И В командном интерфейсе я выбираю "Поступление" "Ожидаемые поступления"
	Тогда в таблице "Список" я перехожу к строке:
		| "Статус" | "Процесс"  | "Контрагент" | "Тип поступления"           |
		| "Новый"  | "Основной" | "Ротор, ООО" | "Поступление от поставщика" |
	И в таблице "Список" я выбираю текущую строку
	И я нажимаю на кнопку с именем 'ВыполнитьОсновнуюОперацию'
	Тогда элемент формы с именем "Статус" стал равен "Подтвержден"
	И я нажимаю на кнопку с именем 'ВыполнитьОсновнуюОперацию'
	Тогда элемент формы с именем "Статус" стал равен "К выполнению"
	И я закрываю все окна клиентского приложения
* Генерация поддонов
	И В командном интерфейсе я выбираю "Топология и процессы" "Генерация поддонов"
	И я нажимаю кнопку выбора у поля с именем 'ТипМестаХранения'
	И в таблице 'Список' я перехожу к строке:
		| 'Наименование' | 'Класс'  | 'Определение вместимости' |
		| 'EUR'          | 'Поддон' | 'По грузоподъемности'     |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	И в поле с именем 'КоличествоМестХранения' я ввожу текст "2"
	И я нажимаю на кнопку с именем 'ФормаСгенерироватьМХ''