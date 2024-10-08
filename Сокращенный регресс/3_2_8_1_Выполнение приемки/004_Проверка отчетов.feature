﻿#language: ru

@tree

Функционал: [3_2_8_1] Выполнение приемки

Как Тестировщик я хочу
проверить отчеты по ОП
чтобы проконтролировать правильность выполнения приемки   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: [010] Проверка отчета план-факт поступления
	И я закрываю все окна клиентского приложения
	И Я открываю навигационную ссылку "$$СсылкаОП$$"
	И я нажимаю на кнопку с именем 'ПодменюОтчетыОбычное_Авто_A90B98538A8EF6116BFF090284DBD8EC'
	И я нажимаю на кнопку с именем 'СформироватьОтчет'
	И табличный документ 'ОтчетТабличныйДокумент' содержит строки:
		| 'Отбор:'                | '*'        | ''           | ''           | ''                  | ''          | ''                 | ''           | ''            | ''           | ''           |
		| ''                      | ''         | ''           | ''           | ''                  | ''          | ''                 | ''           | ''            | ''           | ''           |
		| 'Ожидаемое поступление' | 'Статус'   | 'План'       | 'Факт'       | 'Проконтролировано' | 'Размещено' | 'Осталось принять' | 'Излишек'    | 'Факт мерный' | 'План мин'   | 'План макс'  |
		| 'Объект хранения'       | ''         | ''           | ''           | ''                  | ''          | ''                 | ''           | ''            | ''           | ''           |
		| 'Состояние'             | 'Партия'   | ''           | ''           | ''                  | ''          | ''                 | ''           | ''            | ''           | ''           |
		| '*'                     | 'Принят'   | '15 348,000' | '15 348,000' | ''                  | ''          | ''                 | ''           | ''            | '15 348,000' | '15 348,000' |
		| 'Блок питания'          | ''         | '300,000'    | '300,000'    | ''                  | ''          | ''                 | ''           | ''            | '300,000'    | '300,000'    |
		| ''                      | ''         | '300,000'    | ''           | ''                  | ''          | '300,000'          | ''           | ''            | '300,000'    | '300,000'    |
		| 'Брак'                  | 'N-777666' | ''           | '10,000'     | ''                  | ''          | ''                 | '10,000'     | ''            | ''           | ''           |
		| 'Годен'                 | 'N-777666' | ''           | '290,000'    | ''                  | ''          | ''                 | '290,000'    | ''            | ''           | ''           |
		| 'Кабель микрофонный'    | ''         | '48,000'     | '48,000'     | ''                  | ''          | ''                 | ''           | ''            | '48,000'     | '48,000'     |
		| ''                      | ''         | '48,000'     | ''           | ''                  | ''          | '48,000'           | ''           | ''            | '48,000'     | '48,000'     |
		| 'Годен'                 | ''         | ''           | '48,000'     | ''                  | ''          | ''                 | '48,000'     | ''            | ''           | ''           |
		| 'Разъем 3.5 мм'         | ''         | '15 000,000' | '15 000,000' | ''                  | ''          | ''                 | ''           | ''            | '15 000,000' | '15 000,000' |
		| ''                      | ''         | '15 000,000' | ''           | ''                  | ''          | '15 000,000'       | ''           | ''            | '15 000,000' | '15 000,000' |
		| 'Годен'                 | ''         | ''           | '15 000,000' | ''                  | ''          | ''                 | '15 000,000' | ''            | ''           | ''           |
		| 'Итого'                 | ''         | '15 348,000' | '15 348,000' | ''                  | ''          | ''                 | ''           | ''            | '15 348,000' | '15 348,000' |

Сценарий: [011] Проверка отчета план-факт поступления в упаковках
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю "Поступление" "Отчеты по поступлению"
	И я нажимаю на гиперссылку с именем 'Вариант_f1aff8dcbcd011ecb814005056a75792_Подсистема_df7f457dbcd011ecb814005056a75792'
	И в табличном документе 'ОтчетТабличныйДокумент' я перехожу к ячейке "R1C1"
	И я снимаю флаг с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент0Использование'
	И я нажимаю на кнопку с именем 'СформироватьОтчет'
	И табличный документ 'ОтчетТабличныйДокумент' содержит строки:
		| 'Ожидаемое поступление' | 'Статус'               | 'План (в упаковках для отчетов)' | 'Факт (в упаковках для отчетов)' | 'Проконтролировано (в упаковках для отчетов)' | 'Размещено (в упаковках для отчетов)' | 'Осталось принять (в упаковках для отчетов)' | 'Излишек (в упаковках для отчетов)' |
		| 'Объект хранения'       | 'Упаковка для отчетов' | ''                               | ''                               | ''                                            | ''                                    | ''                                           | ''                                  |
		| 'Состояние'             | 'Партия'               | ''                               | ''                               | ''                                            | ''                                    | ''                                           | ''                                  |
		| '*'                     | 'Принят'               | '378,000'                        | '378,000'                        | ''                                            | ''                                    | ''                                           | ''                                  |
		| 'Блок питания'          | 'кор.'                 | '30,000'                         | '30,000'                         | ''                                            | ''                                    | ''                                           | ''                                  |
		| ''                      | ''                     | '30,000'                         | ''                               | ''                                            | ''                                    | '30,000'                                     | ''                                  |
		| 'Брак'                  | 'N-777666'             | ''                               | '1,000'                          | ''                                            | ''                                    | ''                                           | '1,000'                             |
		| 'Годен'                 | 'N-777666'             | ''                               | '29,000'                         | ''                                            | ''                                    | ''                                           | '29,000'                            |
		| 'Кабель микрофонный'    | 'пач.'                 | '48,000'                         | '48,000'                         | ''                                            | ''                                    | ''                                           | ''                                  |
		| ''                      | ''                     | '48,000'                         | ''                               | ''                                            | ''                                    | '48,000'                                     | ''                                  |
		| 'Годен'                 | ''                     | ''                               | '48,000'                         | ''                                            | ''                                    | ''                                           | '48,000'                            |
		| 'Разъем 3.5 мм'         | 'кор.'                 | '300,000'                        | '300,000'                        | ''                                            | ''                                    | ''                                           | ''                                  |
		| ''                      | ''                     | '300,000'                        | ''                               | ''                                            | ''                                    | '300,000'                                    | ''                                  |
		| 'Годен'                 | ''                     | ''                               | '300,000'                        | ''                                            | ''                                    | ''                                           | '300,000'                           |
		| 'Итого'                 | ''                     | '378,000'                        | '378,000'                        | ''                                            | ''                                    | ''                                           | ''                                  |
		
Сценарий: [012] Проверка отчета анализ поступления
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю "Поступление" "Отчеты по поступлению"
	И я нажимаю на гиперссылку с именем 'Вариант_f1aff87dbcd011ecb814005056a75792_Подсистема_df7f457dbcd011ecb814005056a75792'
	И я снимаю флаг с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент0Использование'
	И я нажимаю на кнопку с именем 'СформироватьОтчет'
	И я нажимаю на кнопку с именем 'ПоказатьУровеньГруппировок3'
	И табличный документ 'ОтчетТабличныйДокумент' содержит строки:
		| 'Ожидаемое поступление' | ''         | ''          | ''           | 'Приемка (пересчет)'  |
		| 'Место хранения'        | 'Зона'     | 'Состояние' | 'Количество' | 'Количество операций' |
		| 'Объект хранения'       | 'Партия'   | 'Состояние' | ''           | ''                    |
		| '*'                     | ''         | ''          | '15 348'     | '11'                  |
		| 'DOC-1'                 | 'Приемка'  | 'Доступно'  | '15 348'     | '11'                  |
		| 'Блок питания'          | 'N-777666' | 'Брак'      | '10'         | ''                    |
		| 'Блок питания'          | 'N-777666' | 'Годен'     | '290'        | ''                    |
		| 'Кабель микрофонный'    | ''         | 'Годен'     | '48'         | ''                    |
		| 'Разъем 3.5 мм'         | ''         | 'Годен'     | '15 000'     | ''                    |
		| 'Итого'                 | ''         | ''          | '15 348'     | '11'                  |