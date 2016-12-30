{******************************************}
{                                          }
{             FastReport v4.0              }
{          Language resource file          }
{                                          }
{         Copyright (c) 1998-2008          }
{         by Alexander Tzyganenko,         }
{            Fast Reports Inc.             }
{                                          }
{******************************************}

unit frxrcDesgn;

interface

implementation

uses frxRes;

const resXML =
'<?xml version="1.1" encoding="utf-8"?><Resources CodePage="1251"><StrRes Name="2000" Text="Инспектор"/><StrRes Name="oiProp" Text="Свойс' + 
'тва"/><StrRes Name="oiEvent" Text="События"/><StrRes Name="2100" Text="Дерево данных"/><StrRes Name="2101" Text="Поля БД"/' + 
'><StrRes Name="2102" Text="Переменные"/><StrRes Name="2103" Text="Функции"/><StrRes Name="2104" Text="Вставлять поле"/><' + 
'StrRes Name="2105" Text="Вставлять заголовок"/><StrRes Name="2106" Text="Классы"/><StrRes Name="dtNoData" Text="Нет дан�' + 
'�ых"/><StrRes Name="dtNoData1" Text="Зайдите в меню &#38;#34;Отчет|Данные...&#38;#34;, чтобы добавить сущес' + 
'твующие наборы данных в отчет, или переключитесь на закладку &#38;#34;Данные&#38;#34; и со' + 
'здайте новые наборы данных."/><StrRes Name="dtData" Text="Данные"/><StrRes Name="dtSysVar" Text="Системные"/><St' + 
'rRes Name="dtVar" Text="Переменные"/><StrRes Name="dtFunc" Text="Функции"/><StrRes Name="2200" Text="Дерево отчета"/><Str' + 
'Res Name="2300" Text="Открыть скрипт"/><StrRes Name="2301" Text="Сохранить скрипт"/><StrRes Name="2302" Text="Запуст' + 
'ить отчет"/><StrRes Name="2303" Text="Отладка"/><StrRes Name="2304" Text="Остановить"/><StrRes Name="2305" Text="Вычисл' + 
'ить"/><StrRes Name="2306" Text="Язык:"/><StrRes Name="2307" Text="Выравнивание"/><StrRes Name="2308" Text="Выровнять ле�' + 
'�ые края"/><StrRes Name="2309" Text="Центрировать по горизонтали"/><StrRes Name="2310" Text="Выровнять пра�' + 
'�ые края"/><StrRes Name="2311" Text="Выровнять верхние края"/><StrRes Name="2312" Text="Центрировать по гор' + 
'изонтали"/><StrRes Name="2313" Text="Выровнять нижние края"/><StrRes Name="2314" Text="Расположить равном�' + 
'�рно по ширине"/><StrRes Name="2315" Text="Расположить равномерно по высоте"/><StrRes Name="2316" Text="Цен' + 
'трировать по горизонтали на бэнде"/><StrRes Name="2317" Text="Центрировать по вертикали на бэ�' + 
'�де"/><StrRes Name="2318" Text="Та же ширина"/><StrRes Name="2319" Text="Та же высота"/><StrRes Name="2320" Text="Текст"/><' + 
'StrRes Name="2321" Text="Стиль"/><StrRes Name="2322" Text="Имя шрифта"/><StrRes Name="2323" Text="Размер шрифта"/><StrRes Na' + 
'me="2324" Text="Полужирный"/><StrRes Name="2325" Text="Курсив"/><StrRes Name="2326" Text="Подчеркивание"/><StrRes Name="2' + 
'327" Text="Цвет шрифта"/><StrRes Name="2328" Text="Условное выделение"/><StrRes Name="2329" Text="Поворот текст' + 
'а"/><StrRes Name="2330" Text="Выровнять текст влево"/><StrRes Name="2331" Text="Центрировать текст по гори�' + 
'�онтали"/><StrRes Name="2332" Text="Выровнять текст вправо"/><StrRes Name="2333" Text="Выровнять текст по ш' + 
'ирине"/><StrRes Name="2334" Text="Выровнять по верхнему краю"/><StrRes Name="2335" Text="Центрировать текс' + 
'т по вертикали"/><StrRes Name="2336" Text="Выровнять по нижнему краю"/><StrRes Name="2337" Text="Рамка"/><StrRe' + 
's Name="2338" Text="Верхняя линия"/><StrRes Name="2339" Text="Нижняя линия"/><StrRes Name="2340" Text="Левая линия"/>' + 
'<StrRes Name="2341" Text="Правая линия"/><StrRes Name="2342" Text="Все линии рамки"/><StrRes Name="2343" Text="Убрать р' + 
'амку"/><StrRes Name="2344" Text="Тень"/><StrRes Name="2345" Text="Цвет заливки"/><StrRes Name="2346" Text="Цвет рамки"/><S' + 
'trRes Name="2347" Text="Стиль рамки"/><StrRes Name="2348" Text="Толщина рамки"/><StrRes Name="2349" Text="Стандартная' + 
'"/><StrRes Name="2350" Text="Новый отчет"/><StrRes Name="2351" Text="Открыть"/><StrRes Name="2352" Text="Сохранить"/><StrRes' + 
' Name="2353" Text="Предварительный просмотр"/><StrRes Name="2354" Text="Добавить страницу в отчет"/><StrR' + 
'es Name="2355" Text="Добавить форму в отчет"/><StrRes Name="2356" Text="Удалить страницу"/><StrRes Name="2357" Text=' + 
'"Настройки страницы"/><StrRes Name="2358" Text="Переменные"/><StrRes Name="2359" Text="Вырезать"/><StrRes Name="236' + 
'0" Text="Копировать"/><StrRes Name="2361" Text="Вставить"/><StrRes Name="2362" Text="Копировать формат"/><StrRes Nam' + 
'e="2363" Text="Отменить"/><StrRes Name="2364" Text="Повторить"/><StrRes Name="2365" Text="Сгруппировать"/><StrRes Name="' + 
'2366" Text="Разгруппировать"/><StrRes Name="2367" Text="Показывать сетку"/><StrRes Name="2368" Text="Выравнива�' + 
'�ие по сетке"/><StrRes Name="2369" Text="Расположить объекты в узлах сетки"/><StrRes Name="2370" Text="Масш�' + 
'�аб"/><StrRes Name="2371" Text="Мастера"/><StrRes Name="2372" Text="Выбор объектов"/><StrRes Name="2373" Text="Рука"/><StrRe' + 
's Name="2374" Text="Лупа"/><StrRes Name="2375" Text="Редактор текста"/><StrRes Name="2376" Text="Копирование внешне' + 
'го вида"/><StrRes Name="2377" Text="Вставить бэнд"/><StrRes Name="2378" Text="&amp;Файл"/><StrRes Name="2379" Text="&amp;Пра�' + 
'�ка"/><StrRes Name="2380" Text="Найти..."/><StrRes Name="2381" Text="Найти далее"/><StrRes Name="2382" Text="Заменить..."/><S' + 
'trRes Name="2383" Text="&amp;Отчет"/><StrRes Name="2384" Text="Данные..."/><StrRes Name="2385" Text="Настройки..."/><StrRes Name="' + 
'2386" Text="Стили..."/><StrRes Name="2387" Text="&amp;Вид"/><StrRes Name="2388" Text="Панели инструментов"/><StrRes Name="23' + 
'89" Text="Стандартная"/><StrRes Name="2390" Text="Текст"/><StrRes Name="2391" Text="Рамка"/><StrRes Name="2392" Text="Вырав�' + 
'�ивание"/><StrRes Name="2393" Text="Мастера"/><StrRes Name="2394" Text="Инспектор"/><StrRes Name="2395" Text="Дерево да�' + 
'�ных"/><StrRes Name="2396" Text="Дерево отчета"/><StrRes Name="2397" Text="Линейки"/><StrRes Name="2398" Text="Выносные ' + 
'линии"/><StrRes Name="2399" Text="Удалить выносные линии"/><StrRes Name="2400" Text="Настройки..."/><StrRes Name="24' + 
'01" Text="&amp;?"/><StrRes Name="2402" Text="Справка..."/><StrRes Name="2403" Text="О FastReport..."/><StrRes Name="2404" Text="Редакто' + 
'р TabOrder..."/><StrRes Name="2405" Text="Отменить"/><StrRes Name="2406" Text="Повторить"/><StrRes Name="2407" Text="Вырезат�' + 
'�"/><StrRes Name="2408" Text="Копировать"/><StrRes Name="2409" Text="Вставить"/><StrRes Name="2410" Text="Сгруппировать' + 
'"/><StrRes Name="2411" Text="Разгруппировать"/><StrRes Name="2412" Text="Удалить"/><StrRes Name="2413" Text="Удалить ст' + 
'раницу"/><StrRes Name="2414" Text="Выбрать все"/><StrRes Name="2415" Text="Редактировать..."/><StrRes Name="2416" Text="�' + 
'�а передний план"/><StrRes Name="2417" Text="На задний план"/><StrRes Name="2418" Text="Новый..."/><StrRes Name="2419" T' + 
'ext="Новый отчет"/><StrRes Name="2420" Text="Новая страница"/><StrRes Name="2421" Text="Новая форма"/><StrRes Name="2' + 
'422" Text="Открыть..."/><StrRes Name="2423" Text="Сохранить"/><StrRes Name="2424" Text="Сохранить как..."/><StrRes Name="2' + 
'425" Text="Переменные..."/><StrRes Name="2426" Text="Настройки страницы..."/><StrRes Name="2427" Text="Просмотр"/><' + 
'StrRes Name="2428" Text="Выход"/><StrRes Name="2429" Text="Заголовок отчета"/><StrRes Name="2430" Text="Подвал отчета"' + 
'/><StrRes Name="2431" Text="Заголовок страницы"/><StrRes Name="2432" Text="Подвал страницы"/><StrRes Name="2433" Text="' + 
'Заголовок данных"/><StrRes Name="2434" Text="Подвал данных"/><StrRes Name="2435" Text="Данные 1 уровня"/><StrRe' + 
's Name="2436" Text="Данные 2 уровня"/><StrRes Name="2437" Text="Данные 3 уровня"/><StrRes Name="2438" Text="Данные 4 у�' + 
'�овня"/><StrRes Name="2439" Text="Данные 5 уровня"/><StrRes Name="2440" Text="Данные 6 уровня"/><StrRes Name="2441" Text="' + 
'Заголовок группы"/><StrRes Name="2442" Text="Подвал группы"/><StrRes Name="2443" Text="Дочерний бэнд"/><StrRes ' + 
'Name="2444" Text="Заголовок колонки"/><StrRes Name="2445" Text="Подвал колонки"/><StrRes Name="2446" Text="Фоновый' + 
' бэнд"/><StrRes Name="2447" Text="Вертикальные бэнды"/><StrRes Name="2448" Text="Заголовок данных"/><StrRes Name="' + 
'2449" Text="Подвал данных"/><StrRes Name="2450" Text="Данные 1 уровня"/><StrRes Name="2451" Text="Данные 2 уровня"' + 
'/><StrRes Name="2452" Text="Данные 3 уровня"/><StrRes Name="2453" Text="Заголовок группы"/><StrRes Name="2454" Text="Под' + 
'вал группы"/><StrRes Name="2455" Text="Дочерний бэнд"/><StrRes Name="2456" Text="0°"/><StrRes Name="2457" Text="45°"/><StrRes N' + 
'ame="2458" Text="90°"/><StrRes Name="2459" Text="180°"/><StrRes Name="2460" Text="270°"/><StrRes Name="2461" Text="Параметры шрифта"' + 
'/><StrRes Name="2462" Text="Полужирный"/><StrRes Name="2463" Text="Наклонный"/><StrRes Name="2464" Text="Подчеркнутый"/' + 
'><StrRes Name="2465" Text="Верхний индекс"/><StrRes Name="2466" Text="Нижний индекс"/><StrRes Name="2467" Text="Сжатый"' + 
'/><StrRes Name="2468" Text="Широкий"/><StrRes Name="2469" Text="12 символов/дюйм"/><StrRes Name="2470" Text="15 символов/д' + 
'юйм"/><StrRes Name="2471" Text="Отчет (*.fr3)|*.fr3"/><StrRes Name="2472" Text="Файлы Pascal (*.pas)|*.pas|Файлы C++ (*.cpp)|*.cpp|�' + 
'�айлы JavaScript (*.js)|*.js|Файлы Basic (*.vb)|*.vb|All files|*.*"/><StrRes Name="2473" Text="Файлы Pascal (*.pas)|*.pas|Файлы C++' + 
' (*.cpp)|*.cpp|Файлы JavaScript (*.js)|*.js|Файлы Basic (*.vb)|*.vb|All files|*.*"/><StrRes Name="2474" Text="Подключения..."/><S' + 
'trRes Name="2475" Text="Язык"/><StrRes Name="2476" Text="Точка останова"/><StrRes Name="2477" Text="Выполнить до теку�' + 
'�ей позиции"/><StrRes Name="2478" Text="Добавить дочерний бэнд"/><StrRes Name="dsCm" Text="Сантиметры"/><StrRes' + 
' Name="dsInch" Text="Дюймы"/><StrRes Name="dsPix" Text="Точки"/><StrRes Name="dsChars" Text="Символы"/><StrRes Name="dsCode" Text="К' + 
'од"/><StrRes Name="dsData" Text="Данные"/><StrRes Name="dsPage" Text="Стр."/><StrRes Name="dsRepFilter" Text="Отчет (*.fr3)|*.fr3"/><S' + 
'trRes Name="dsComprRepFilter" Text="Сжатый отчет (*.fr3)|*.fr3"/><StrRes Name="dsSavePreviewChanges" Text="Сохранить измене�' + 
'�ия?"/><StrRes Name="dsSaveChangesTo" Text="Сохранить изменения в "/><StrRes Name="dsCantLoad" Text="Не удалось откр' + 
'ыть файл"/><StrRes Name="dsStyleFile" Text="Стиль"/><StrRes Name="dsCantFindProc" Text="Не удалось найти главную пр' + 
'оцедуру"/><StrRes Name="dsClearScript" Text="Это очистит весь код. Продолжить?"/><StrRes Name="dsNoStyle" Text="Не' + 
'т стиля"/><StrRes Name="dsStyleSample" Text="Пример стиля"/><StrRes Name="dsTextNotFound" Text="Текст ''%s'' не найден"/><' + 
'StrRes Name="dsReplace" Text="Заменить ''%s''?"/><StrRes Name="2600" Text="О FastReport"/><StrRes Name="2601" Text="Посетите нашу �' + 
'�траницу:"/><StrRes Name="2602" Text="Продажи:"/><StrRes Name="2603" Text="Поддержка:"/><StrRes Name="2700" Text="Настро�' + 
'�ки страницы"/><StrRes Name="2701" Text="Страница"/><StrRes Name="2702" Text="Ширина"/><StrRes Name="2703" Text="Высота"' + 
'/><StrRes Name="2704" Text="Формат"/><StrRes Name="2705" Text="Ориентация"/><StrRes Name="2706" Text="Левое"/><StrRes Name="2707"' + 
' Text="Верхнее"/><StrRes Name="2708" Text="Правое"/><StrRes Name="2709" Text="Нижнее"/><StrRes Name="2710" Text="Поля"/><StrRes' + 
' Name="2711" Text="Источник бумаги"/><StrRes Name="2712" Text="Для первой страницы"/><StrRes Name="2713" Text="Для �' + 
'�стальных"/><StrRes Name="2714" Text="Портретная"/><StrRes Name="2715" Text="Альбомная"/><StrRes Name="2716" Text="Проч' + 
'ее"/><StrRes Name="2717" Text="Колонки"/><StrRes Name="2718" Text="Количество"/><StrRes Name="2719" Text="Ширина"/><StrRes Na' + 
'me="2720" Text="Позиции"/><StrRes Name="2721" Text="Прочее"/><StrRes Name="2722" Text="Дуплекс"/><StrRes Name="2723" Text="Печ�' + 
'�тать на пред.странице"/><StrRes Name="2724" Text="Зеркальные поля"/><StrRes Name="2725" Text="Большая высо' + 
'та в дизайнере"/><StrRes Name="2726" Text="Бесконечная ширина"/><StrRes Name="2727" Text="Бесконечная высо' + 
'та"/><StrRes Name="2800" Text="Данные отчета"/><StrRes Name="2900" Text="Список переменных"/><StrRes Name="2901" Text="�' + 
'�атегория"/><StrRes Name="2902" Text="Переменная"/><StrRes Name="2903" Text="Изменить"/><StrRes Name="2904" Text="Удали' + 
'ть"/><StrRes Name="2905" Text="Список"/><StrRes Name="2906" Text="Открыть"/><StrRes Name="2907" Text="Сохранить"/><StrRes Name' + 
'="2908" Text=" Выражение:"/><StrRes Name="2909" Text="Список переменных (*.fd3)|*.fd3"/><StrRes Name="2910" Text="Списо�' + 
'� переменных (*.fd3)|*.fd3"/><StrRes Name="vaNoVar" Text="(нет переменных)"/><StrRes Name="vaVar" Text="Переменные"/>' + 
'<StrRes Name="vaDupName" Text="Переменная с таким именем уже существует"/><StrRes Name="3000" Text="Настрой�' + 
'�и дизайнера"/><StrRes Name="3001" Text="Сетка"/><StrRes Name="3002" Text="Тип"/><StrRes Name="3003" Text="Размер"/><StrRes Na' + 
'me="3004" Text="Диалоговая форма:"/><StrRes Name="3005" Text="Прочее"/><StrRes Name="3006" Text="Шрифты"/><StrRes Name="300' + 
'7" Text="Редактор кода"/><StrRes Name="3008" Text="Редактор текста"/><StrRes Name="3009" Text="Размер"/><StrRes Name="' + 
'3010" Text="Размер"/><StrRes Name="3011" Text="Цвета"/><StrRes Name="3012" Text="Промежуток между бэндами:"/><StrRes ' + 
'Name="3013" Text="см"/><StrRes Name="3014" Text="in"/><StrRes Name="3015" Text="pt"/><StrRes Name="3016" Text="pt"/><StrRes Name="3017" Text="pt"/><' + 
'StrRes Name="3018" Text="Сантиметры:"/><StrRes Name="3019" Text="Дюймы:"/><StrRes Name="3020" Text="Точки:"/><StrRes Name="3021" T' + 
'ext="Показывать сетку"/><StrRes Name="3022" Text="Выравнивать по сетке"/><StrRes Name="3023" Text="Вызывать �' + 
'�едактор после вставки"/><StrRes Name="3024" Text="Использовать шрифт объекта"/><StrRes Name="3025" Text="�' + 
'�абочее поле"/><StrRes Name="3026" Text="Окна"/><StrRes Name="3027" Text="Цвет сетки для LCD-монитора"/><StrRes Name' + 
'="3028" Text="Свободное размещение бэндов"/><StrRes Name="3029" Text="Показывать выпадающий список ' + 
'полей"/><StrRes Name="3030" Text="Показывать окно приветствия"/><StrRes Name="3031" Text="Восстановить на�' + 
'�тройки"/><StrRes Name="3032" Text="Показывать заголовки бэндов"/><StrRes Name="3100" Text="Источник данны' + 
'х"/><StrRes Name="3101" Text="Количество записей:"/><StrRes Name="dbNotAssigned" Text="[не назначен]"/><StrRes Name="3200"' + 
' Text="Группа"/><StrRes Name="3201" Text="Условие"/><StrRes Name="3202" Text="Свойства"/><StrRes Name="3203" Text="Поле БД"' + 
'/><StrRes Name="3204" Text="Выражение"/><StrRes Name="3205" Text="Выводить группу на одной странице"/><StrRes Na' + 
'me="3206" Text="Формировать новую страницу"/><StrRes Name="3207" Text="Показывать в дереве отчета"/><St' + 
'rRes Name="3300" Text="Служебный текст"/><StrRes Name="3301" Text="Дата-бэнд"/><StrRes Name="3302" Text="Набор данных' + 
'"/><StrRes Name="3303" Text="Поле БД"/><StrRes Name="3304" Text="Функция"/><StrRes Name="3305" Text="Выражение"/><StrRes Name="3' + 
'306" Text="Агрегатная функция"/><StrRes Name="3307" Text="Системная переменная"/><StrRes Name="3308" Text="Учи�' + 
'�ывать невидимые бэнды"/><StrRes Name="3309" Text="Текст"/><StrRes Name="3310" Text="Нарастающим итогом"/><St' + 
'rRes Name="agAggregate" Text="Вставить агрегатную функцию"/><StrRes Name="vt1" Text="[DATE]"/><StrRes Name="vt2" Text="[TIME]' + 
'"/><StrRes Name="vt3" Text="[PAGE#]"/><StrRes Name="vt4" Text="[TOTALPAGES#]"/><StrRes Name="vt5" Text="[PAGE#] из [TOTALPAGES#]"/><StrRes Name="vt6' + 
'" Text="[LINE#]"/><StrRes Name="3400" Text="OLE объект"/><StrRes Name="3401" Text="Вставить..."/><StrRes Name="3402" Text="Редакт�' + 
'�р..."/><StrRes Name="3403" Text="Закрыть"/><StrRes Name="olStretched" Text="Растягиваемый"/><StrRes Name="3500" Text="Штрих' + 
'код"/><StrRes Name="3501" Text="Код"/><StrRes Name="3502" Text="Тип штрихкода"/><StrRes Name="3503" Text="Масштаб:"/><StrRes ' + 
'Name="3504" Text="Свойства"/><StrRes Name="3505" Text="Ориентация"/><StrRes Name="3506" Text="Контрольная сумма"/><S' + 
'trRes Name="3507" Text="Показывать текст"/><StrRes Name="3508" Text="0°"/><StrRes Name="3509" Text="90°"/><StrRes Name="3510" Text="1' + 
'80°"/><StrRes Name="3511" Text="270°"/><StrRes Name="bcCalcChecksum" Text="Контрольная сумма"/><StrRes Name="bcShowText" Text="По�' + 
'�азывать текст"/><StrRes Name="3600" Text="Псевдонимы"/><StrRes Name="3601" Text="Нажмите Enter для редактиро' + 
'вания"/><StrRes Name="3602" Text="Псевдоним набора данных"/><StrRes Name="3603" Text="Псевдонимы полей"/><Str' + 
'Res Name="3604" Text="Сброс"/><StrRes Name="3605" Text="Обновить"/><StrRes Name="alUserName" Text="Псевдоним"/><StrRes Name="alO' + 
'riginal" Text="Оригинальное имя"/><StrRes Name="3700" Text="Параметры"/><StrRes Name="qpName" Text="Имя"/><StrRes Name="qpD' + 
'ataType" Text="Тип"/><StrRes Name="qpValue" Text="Значение"/><StrRes Name="3800" Text="Редактор Master-Detail"/><StrRes Name="3801"' + 
' Text="Поля Detail"/><StrRes Name="3802" Text="Поля Master"/><StrRes Name="3803" Text="Связанные поля"/><StrRes Name="3804" Text=' + 
'"Добавить"/><StrRes Name="3805" Text="Очистить"/><StrRes Name="3900" Text="Редактор текста"/><StrRes Name="3901" Text="�' + 
'�ставить выражение"/><StrRes Name="3902" Text="Вставить агрегатную функцию"/><StrRes Name="3903" Text="Вст' + 
'авить формат"/><StrRes Name="3904" Text="Переносить слова"/><StrRes Name="3905" Text="Текст"/><StrRes Name="3906" Text=' + 
'"Формат"/><StrRes Name="3907" Text="Выделение"/><StrRes Name="4000" Text="Картинка"/><StrRes Name="4001" Text="Загрузит' + 
'ь"/><StrRes Name="4002" Text="Копировать"/><StrRes Name="4003" Text="Вставить"/><StrRes Name="4004" Text="Очистить"/><StrRe' + 
's Name="piEmpty" Text="Пусто"/><StrRes Name="4100" Text="Диаграмма"/><StrRes Name="4101" Text="Добавить серию"/><StrRes Nam' + 
'e="4102" Text="Удалить серию"/><StrRes Name="4103" Text="Редактировать серию"/><StrRes Name="4104" Text="Данные и' + 
'з бэнда"/><StrRes Name="4105" Text="Фиксированные данные"/><StrRes Name="4106" Text="Набор данных"/><StrRes Name="' + 
'4107" Text="Данные"/><StrRes Name="4108" Text="Значения"/><StrRes Name="4109" Text="Выберите серию или добавьте ' + 
'новую."/><StrRes Name="4114" Text="Свойства"/><StrRes Name="4115" Text="Показывать TopN значений"/><StrRes Name="4116" ' + 
'Text="Заголовок TopN"/><StrRes Name="4117" Text="Сортировка"/><StrRes Name="4126" Text="Ось X как"/><StrRes Name="ch3D" Text=' + 
'"Трехмерная"/><StrRes Name="chAxis" Text="Показывать оси"/><StrRes Name="chsoNone" Text="Нет"/><StrRes Name="chsoAscending" ' + 
'Text="По возрастанию"/><StrRes Name="chsoDescending" Text="По убыванию"/><StrRes Name="chxtText" Text="Текст"/><StrRes Nam' + 
'e="chxtNumber" Text="Число"/><StrRes Name="chxtDate" Text="Дата"/><StrRes Name="4200" Text="RichEdit"/><StrRes Name="4201" Text="Открыт' + 
'ь"/><StrRes Name="4202" Text="Сохранить"/><StrRes Name="4203" Text="Отменить"/><StrRes Name="4204" Text="Шрифт"/><StrRes Name="' + 
'4205" Text="Вставить выражение"/><StrRes Name="4206" Text="Полужирный"/><StrRes Name="4207" Text="Курсив"/><StrRes Na' + 
'me="4208" Text="Подчеркивание"/><StrRes Name="4209" Text="Выровнять текст влево"/><StrRes Name="4210" Text="Выров' + 
'нять текст по центру"/><StrRes Name="4211" Text="Выровнять текст вправо"/><StrRes Name="4212" Text="Выровн�' + 
'�ть текст по ширине"/><StrRes Name="4213" Text="Список"/><StrRes Name="4300" Text="Редактор Cross-tab"/><StrRes Name="430' + 
'1" Text="Данные"/><StrRes Name="4302" Text="Размерность"/><StrRes Name="4303" Text="Строки"/><StrRes Name="4304" Text="Коло' + 
'нки"/><StrRes Name="4305" Text="Ячейки"/><StrRes Name="4306" Text="Структура таблицы"/><StrRes Name="4307" Text="Заголо' + 
'вок строки"/><StrRes Name="4308" Text="Заголовок колонки"/><StrRes Name="4309" Text="Итог строки"/><StrRes Name="43' + 
'10" Text="Итог колонки"/><StrRes Name="4311" Text="Поменять строки/колонки"/><StrRes Name="4312" Text="Выберит�' + 
'� стиль"/><StrRes Name="4313" Text="Сохранить текущий стиль..."/><StrRes Name="4314" Text="Заголовок таблицы' + 
'"/><StrRes Name="4315" Text="Угол таблицы"/><StrRes Name="4316" Text="Повторять заголовки на новой страниц�' + 
'�"/><StrRes Name="4317" Text="Авто-размер"/><StrRes Name="4318" Text="Рамка вокруг ячеек"/><StrRes Name="4319" Text="Печ�' + 
'�тать вниз, потом вбок"/><StrRes Name="4320" Text="Ячейки одной строкой"/><StrRes Name="4321" Text="Объедин�' + 
'�ть одинаковые ячейки"/><StrRes Name="4322" Text="Нет"/><StrRes Name="4323" Text="Sum"/><StrRes Name="4324" Text="Min"/><StrRes N' + 
'ame="4325" Text="Max"/><StrRes Name="4326" Text="Average"/><StrRes Name="4327" Text="Count"/><StrRes Name="4328" Text="По возрастанию (А' + 
'-Я)"/><StrRes Name="4329" Text="По убыванию (Я-А)"/><StrRes Name="4330" Text="Не сортировать"/><StrRes Name="crStName" Text=' + 
'"Введите имя стиля:"/><StrRes Name="crResize" Text="Чтобы изменить размеры ячеек, установите сво�' + 
'�ство AutoSize = False."/><StrRes Name="crSubtotal" Text="Подитоги"/><StrRes Name="crNone" Text="нет"/><StrRes Name="crSum" Text="Sum"/' + 
'><StrRes Name="crMin" Text="Min"/><StrRes Name="crMax" Text="Max"/><StrRes Name="crAvg" Text="Avg"/><StrRes Name="crCount" Text="Count"/><StrRes Name=' + 
'"crAsc" Text="А-Я"/><StrRes Name="crDesc" Text="Я-А"/><StrRes Name="4400" Text="Редактор выражений"/><StrRes Name="4401" Text="В' + 
'ыражение:"/><StrRes Name="4500" Text="Форматирование"/><StrRes Name="4501" Text="Категория"/><StrRes Name="4502" Text="' + 
'Формат"/><StrRes Name="4503" Text="Строка форматирования:"/><StrRes Name="4504" Text="Разделитель дроби:"/><' + 
'StrRes Name="fkText" Text="Текст"/><StrRes Name="fkNumber" Text="Число"/><StrRes Name="fkDateTime" Text="Дата/время"/><StrRes Name=' + 
'"fkBoolean" Text="Логическое"/><StrRes Name="fkNumber1" Text="1234.5;%g"/><StrRes Name="fkNumber2" Text="1234.50;%2.2f"/><StrRes Name="fkNum' + 
'ber3" Text="1,234.50;%2.2n"/><StrRes Name="fkNumber4" Text="1,234.50р;%2.2m"/><StrRes Name="fkDateTime1" Text="28.11.2002;dd.mm.yyyy"/><StrRes Name="' + 
'fkDateTime2" Text="28 Ноя 2002;dd mmm yyyy"/><StrRes Name="fkDateTime3" Text="28 Ноябрь 2002;dd mmmm yyyy"/><StrRes Name="fkDateTime4" Text="' + 
'02:14;hh:mm"/><StrRes Name="fkDateTime5" Text="02:14am;hh:mm am/pm"/><StrRes Name="fkDateTime6" Text="02:14:00;hh:mm:ss"/><StrRes Name="fkDateTime7" T' + 
'ext="02:14, 28 Ноября 2002;hh:mm dd mmmm yyyy"/><StrRes Name="fkBoolean1" Text="0,1;0,1"/><StrRes Name="fkBoolean2" Text="Нет,Да;Нет,Д�' + 
'�"/><StrRes Name="fkBoolean3" Text="_,x;_,x"/><StrRes Name="fkBoolean4" Text="False,True;False,True"/><StrRes Name="4600" Text="Условное вы�' + 
'�еление"/><StrRes Name="4601" Text="Цвет..."/><StrRes Name="4602" Text="Цвет..."/><StrRes Name="4603" Text="Условие"/><StrRes Nam' + 
'e="4604" Text="Шрифт"/><StrRes Name="4605" Text="Фон"/><StrRes Name="4606" Text="Полужирный"/><StrRes Name="4607" Text="Курсив' + 
'"/><StrRes Name="4608" Text="Подчеркнутый"/><StrRes Name="4609" Text="Прозрачный"/><StrRes Name="4610" Text="Другой:"/><St' + 
'rRes Name="4700" Text="Настройки отчета"/><StrRes Name="4701" Text="Основные"/><StrRes Name="4702" Text="Настройки п�' + 
'�чати"/><StrRes Name="4703" Text="Копии"/><StrRes Name="4704" Text="Свойства"/><StrRes Name="4705" Text="Пароль"/><StrRes Name=' + 
'"4706" Text="Разобрать по копиям"/><StrRes Name="4707" Text="Два прохода"/><StrRes Name="4708" Text="Печатать, ес' + 
'ли пустой"/><StrRes Name="4709" Text="Описание"/><StrRes Name="4710" Text="Имя"/><StrRes Name="4711" Text="Описание"/><StrR' + 
'es Name="4712" Text="Картинка"/><StrRes Name="4713" Text="Автор"/><StrRes Name="4714" Text="Major"/><StrRes Name="4715" Text="Minor"/><St' + 
'rRes Name="4716" Text="Release"/><StrRes Name="4717" Text="Build"/><StrRes Name="4718" Text="Создан"/><StrRes Name="4719" Text="Изменен"/' + 
'><StrRes Name="4720" Text="Описание"/><StrRes Name="4721" Text="Версия"/><StrRes Name="4722" Text="Выбрать..."/><StrRes Name="472' + 
'3" Text="Наследование"/><StrRes Name="4724" Text="Выберите действие:"/><StrRes Name="4725" Text="Не менять"/><StrR' + 
'es Name="4726" Text="Отсоединить базовый отчет"/><StrRes Name="4727" Text="Наследовать от базового отч�' + 
'�та:"/><StrRes Name="4728" Text="Наследование"/><StrRes Name="rePrnOnPort" Text="на"/><StrRes Name="riNotInherited" Text="Этот о�' + 
'�чет не наследован."/><StrRes Name="riInherited" Text="Этот отчет наследован от базового: %s"/><StrRes Nam' + 
'e="4800" Text="Редактор строк"/><StrRes Name="4900" Text="Редактор SQL"/><StrRes Name="4901" Text="Построитель зап�' + 
'�оса"/><StrRes Name="5000" Text="Пароль"/><StrRes Name="5001" Text="Введите пароль:"/><StrRes Name="5100" Text="Стили"/><St' + 
'rRes Name="5101" Text="Цвет..."/><StrRes Name="5102" Text="Шрифт..."/><StrRes Name="5103" Text="Рамка..."/><StrRes Name="5104" Text="Д�' + 
'�бавить"/><StrRes Name="5105" Text="Удалить"/><StrRes Name="5106" Text="Правка"/><StrRes Name="5107" Text="Загрузить"/><St' + 
'rRes Name="5108" Text="Сохранить"/><StrRes Name="5200" Text="Редактор рамки"/><StrRes Name="5201" Text="Рамка"/><StrRes Nam' + 
'e="5202" Text="Линия"/><StrRes Name="5203" Text="Тень"/><StrRes Name="5204" Text="Верхняя линия"/><StrRes Name="5205" Text="Ни�' + 
'�няя линия"/><StrRes Name="5206" Text="Левая линия"/><StrRes Name="5207" Text="Правая линия"/><StrRes Name="5208" Text="�' + 
'�се линии"/><StrRes Name="5209" Text="Выключить линии"/><StrRes Name="5210" Text="Цвет рамки"/><StrRes Name="5211" Text=' + 
'"Стиль рамки"/><StrRes Name="5212" Text="Толщина линии"/><StrRes Name="5213" Text="Тень"/><StrRes Name="5214" Text="Цвет' + 
' тени"/><StrRes Name="5215" Text="Размер тени"/><StrRes Name="5300" Text="Создать новый..."/><StrRes Name="5301" Text="Сп�' + 
'�сок"/><StrRes Name="5302" Text="Шаблоны"/><StrRes Name="5303" Text="Наследовать отчет"/><StrRes Name="5400" Text="Реда�' + 
'�тор TabOrder"/><StrRes Name="5401" Text="Элементы управления:"/><StrRes Name="5402" Text="Вверх"/><StrRes Name="5403" Text=' + 
'"Вниз"/><StrRes Name="5500" Text="Вычислить"/><StrRes Name="5501" Text="Выражение"/><StrRes Name="5502" Text="Результат' + 
'"/><StrRes Name="5600" Text="Мастер отчетов"/><StrRes Name="5601" Text="Данные"/><StrRes Name="5602" Text="Поля"/><StrRes Name=' + 
'"5603" Text="Группы"/><StrRes Name="5604" Text="Размещение"/><StrRes Name="5605" Text="Стиль"/><StrRes Name="5606" Text="Шаг 1' + 
'. Выберите набор данных."/><StrRes Name="5607" Text="Шаг 2. Выберите поля для отображения в отче�' + 
'�е."/><StrRes Name="5608" Text="Шаг 3. Создайте группы (не обязательно)."/><StrRes Name="5609" Text="Шаг 4. Выбе' + 
'рите ориентацию листа и размещение данных."/><StrRes Name="5610" Text="Шаг 5. Выберите стиль от�' + 
'�ета."/><StrRes Name="5611" Text="Добавить &#62;"/><StrRes Name="5612" Text="Добавить все &#38;#62;&#38;#62;"/><StrRes Name="561' + 
'3" Text="&#60; Удалить"/><StrRes Name="5614" Text="&#38;#60;&#38;#60; Удалить все"/><StrRes Name="5615" Text="Добавить &#62;"' + 
'/><StrRes Name="5616" Text="&#60; Удалить"/><StrRes Name="5617" Text="Выбранные поля:"/><StrRes Name="5618" Text="Доступны' + 
'е поля:"/><StrRes Name="5619" Text="Группы:"/><StrRes Name="5620" Text="Ориентация"/><StrRes Name="5621" Text="Размещени' + 
'е"/><StrRes Name="5622" Text="Портретная"/><StrRes Name="5623" Text="Альбомная"/><StrRes Name="5624" Text="В виде табли�' + 
'�ы"/><StrRes Name="5625" Text="В виде колонок"/><StrRes Name="5626" Text="Уместить все поля по ширине"/><StrRes Na' + 
'me="5627" Text="&#60;&#60; Назад"/><StrRes Name="5628" Text="Далее &#62;&#62;"/><StrRes Name="5629" Text="Готово"/><StrRes Name="5630"' + 
' Text="Новая таблица..."/><StrRes Name="5631" Text="Новый запрос..."/><StrRes Name="5632" Text="Выберите подключ' + 
'ение:"/><StrRes Name="5633" Text="Выберите таблицу:"/><StrRes Name="5634" Text="или"/><StrRes Name="5635" Text="Создайте' + 
' запрос..."/><StrRes Name="5636" Text="Настройка подключений"/><StrRes Name="wzStd" Text="Мастер стандартно�' + 
'�о отчета"/><StrRes Name="wzDMP" Text="Мастер матричного отчета"/><StrRes Name="wzStdEmpty" Text="Пустой станд' + 
'артный отчет"/><StrRes Name="wzDMPEmpty" Text="Пустой матричный отчет"/><StrRes Name="5700" Text="Мастер подк' + 
'лючения к БД"/><StrRes Name="5701" Text="Подключение"/><StrRes Name="5702" Text="Выберите тип подключения:"' + 
'/><StrRes Name="5703" Text="Выберите базу данных:"/><StrRes Name="5704" Text="Имя пользователя"/><StrRes Name="5705" ' + 
'Text="Пароль"/><StrRes Name="5706" Text="Спрашивать пароль"/><StrRes Name="5707" Text="Использовать пароль:"/>' + 
'<StrRes Name="5708" Text="Таблица"/><StrRes Name="5709" Text="Выберите имя таблицы:"/><StrRes Name="5710" Text="Фильтр�' + 
'�вать записи:"/><StrRes Name="5711" Text="Запрос"/><StrRes Name="5712" Text="Текст запроса:"/><StrRes Name="5713" Text="П' + 
'остроитель запроса"/><StrRes Name="5714" Text="Редактировать параметры"/><StrRes Name="ftAllFiles" Text="Все' + 
' файлы"/><StrRes Name="ftPictures" Text="Картинки"/><StrRes Name="ftDB" Text="Базы данных"/><StrRes Name="ftRichFile" Text="Ф�' + 
'�йл RichText"/><StrRes Name="ftTextFile" Text="Текстовый файл"/><StrRes Name="prNotAssigned" Text="(Не определен)"/><StrRes ' + 
'Name="prInvProp" Text="Неверное значение свойства"/><StrRes Name="prDupl" Text="Повторяющееся имя"/><StrRes Na' + 
'me="prPict" Text="(Картинка)"/><StrRes Name="mvExpr" Text="Выражения в тексте"/><StrRes Name="mvStretch" Text="Растяги�' + 
'�аемый"/><StrRes Name="mvStretchToMax" Text="Растягивание до макс.высоты"/><StrRes Name="mvShift" Text="Смещаемы�' + 
'�"/><StrRes Name="mvShiftOver" Text="Смещаемый при перекрытии"/><StrRes Name="mvVisible" Text="Видимый"/><StrRes Name="mv' + 
'Printable" Text="Печатаемый"/><StrRes Name="mvFont" Text="Шрифт..."/><StrRes Name="mvFormat" Text="Форматирование..."/><S' + 
'trRes Name="mvClear" Text="Очистить текст"/><StrRes Name="mvAutoWidth" Text="Автоширина"/><StrRes Name="mvWWrap" Text="Пере' + 
'носить слова"/><StrRes Name="mvSuppress" Text="Скрывать повторяющиеся"/><StrRes Name="mvHideZ" Text="Скрывать ' + 
'нули"/><StrRes Name="mvHTML" Text="HTML-тэги в тексте"/><StrRes Name="lvDiagonal" Text="Диагональная"/><StrRes Name="pvAuto' + 
'Size" Text="Авторазмер"/><StrRes Name="pvCenter" Text="Центрировать"/><StrRes Name="pvAspect" Text="Сохранять проп�' + 
'�рции"/><StrRes Name="bvSplit" Text="Разрешить разрыв"/><StrRes Name="bvKeepChild" Text="Держать Child вместе"/><StrRe' + 
's Name="bvPrintChild" Text="Печатать Child если невидимый"/><StrRes Name="bvStartPage" Text="Формировать новую с' + 
'траницу"/><StrRes Name="bvPrintIfEmpty" Text="Печатать, если Detail пуст"/><StrRes Name="bvKeepDetail" Text="Держать Det' + 
'ail вместе"/><StrRes Name="bvKeepFooter" Text="Держать подвал вместе"/><StrRes Name="bvReprint" Text="Выводить на �' + 
'�овой странице"/><StrRes Name="bvOnFirst" Text="Печатать на первой странице"/><StrRes Name="bvOnLast" Text="Печ' + 
'атать на последней странице"/><StrRes Name="bvKeepGroup" Text="Держать вместе"/><StrRes Name="bvFooterAfterEach" ' + 
'Text="Footer после каждой записи"/><StrRes Name="bvDrillDown" Text="Разворачиваемый"/><StrRes Name="bvResetPageNo" Tex' + 
't="Сбрасывать номер страницы"/><StrRes Name="srParent" Text="Печатать на бэнде"/><StrRes Name="bvKeepHeader" Tex' + 
't="Держать заголовок вместе"/><StrRes Name="obCatDraw" Text="Рисование"/><StrRes Name="obCatOther" Text="Другие �' + 
'�бъекты"/><StrRes Name="obCatOtherControls" Text="Другие элементы"/><StrRes Name="obDiagLine" Text="Диагональная ли�' + 
'�ия"/><StrRes Name="obRect" Text="Прямоугольник"/><StrRes Name="obRoundRect" Text="Скругленный прямоугольник"/>' + 
'<StrRes Name="obEllipse" Text="Эллипс"/><StrRes Name="obTrian" Text="Треугольник"/><StrRes Name="obDiamond" Text="Ромб"/><StrRes ' + 
'Name="obLabel" Text="Элемент управления Label"/><StrRes Name="obEdit" Text="Элемент управления Edit"/><StrRes Name="' + 
'obMemoC" Text="Элемент управления Memo"/><StrRes Name="obButton" Text="Элемент управления Button"/><StrRes Name="obC' + 
'hBoxC" Text="Элемент управления CheckBox"/><StrRes Name="obRButton" Text="Элемент управления RadioButton"/><StrRes N' + 
'ame="obLBox" Text="Элемент управления ListBox"/><StrRes Name="obCBox" Text="Элемент управления ComboBox"/><StrRes Na' + 
'me="obDateEdit" Text="Элемент управления DateEdit"/><StrRes Name="obImageC" Text="Элемент управления Image"/><StrRes' + 
' Name="obPanel" Text="Элемент управления Panel"/><StrRes Name="obGrBox" Text="Элемент управления GroupBox"/><StrRes ' + 
'Name="obBBtn" Text="Элемент управления BitBtn"/><StrRes Name="obSBtn" Text="Элемент управления SpeedButton"/><StrRes' + 
' Name="obMEdit" Text="Элемент управления MaskEdit"/><StrRes Name="obChLB" Text="Элемент управления CheckListBox"/><S' + 
'trRes Name="obDBLookup" Text="Элемент управления DBLookupComboBox"/><StrRes Name="obBevel" Text="Элемент управления ' + 
'Bevel"/><StrRes Name="obShape" Text="Элемент управления Shape"/><StrRes Name="obText" Text="Объект &#38;#34;Текст&#38;#34;' + 
'"/><StrRes Name="obSysText" Text="Объект &#38;#34;Служебный текст&#38;#34;"/><StrRes Name="obLine" Text="Объект &#38;#34;Л�' + 
'�ния&#38;#34;"/><StrRes Name="obPicture" Text="Объект &#38;#34;Рисунок&#38;#34;"/><StrRes Name="obBand" Text="Объект &#34;Бэн' + 
'д&#34;"/><StrRes Name="obDataBand" Text="Объект &#38;#34;Дата-бэнд&#38;#34;"/><StrRes Name="obSubRep" Text="Объект &#38;#34;Вл�' + 
'�женный отчет&#38;#34;"/><StrRes Name="obDlgPage" Text="Диалоговая форма"/><StrRes Name="obRepPage" Text="Страница �' + 
'�тчета"/><StrRes Name="obReport" Text="Объект &#38;#34;Отчет&#38;#34;"/><StrRes Name="obRich" Text="Объект &#34;RichText&#34;"/>' + 
'<StrRes Name="obOLE" Text="Объект &#34;OLE&#34;"/><StrRes Name="obChBox" Text="Объект &#34;CheckBox&#34;"/><StrRes Name="obChart" Text="О' + 
'бъект &#38;#34;Диаграмма&#38;#34;"/><StrRes Name="obBarC" Text="Объект &#38;#34;Штрихкод&#38;#34;"/><StrRes Name="obCross"' + 
' Text="Объект &#38;#34;Cross-tab&#38;#34;"/><StrRes Name="obDBCross" Text="Объект &#38;#34;DB Cross-tab&#38;#34;"/><StrRes Name="obGrad" T' + 
'ext="Объект &#38;#34;Градиент&#38;#34;"/><StrRes Name="obDMPText" Text="Объект &#38;#34;Матричный текст&#38;#34;"/><' + 
'StrRes Name="obDMPLine" Text="Объект &#38;#34;Матричная линия&#38;#34;"/><StrRes Name="obDMPCmd" Text="Объект &#38;#34;ESC-�' + 
'�оманда&#38;#34;"/><StrRes Name="obBDEDB" Text="База данных BDE"/><StrRes Name="obBDETb" Text="Таблица BDE"/><StrRes Name="obBD' + 
'EQ" Text="Запрос BDE"/><StrRes Name="obBDEComps" Text="Компоненты BDE"/><StrRes Name="obIBXDB" Text="База данных IBX"/><StrR' + 
'es Name="obIBXTb" Text="Таблица IBX"/><StrRes Name="obIBXQ" Text="Запрос IBX"/><StrRes Name="obIBXComps" Text="Компоненты IBX"/' + 
'><StrRes Name="obADODB" Text="База данных ADO"/><StrRes Name="obADOTb" Text="Таблица ADO"/><StrRes Name="obADOQ" Text="Запрос A' + 
'DO"/><StrRes Name="obADOComps" Text="Компоненты ADO"/><StrRes Name="obDBXDB" Text="База данных DBX"/><StrRes Name="obDBXTb" Text="' + 
'Таблица DBX"/><StrRes Name="obDBXQ" Text="Запрос DBX"/><StrRes Name="obDBXComps" Text="Компоненты DBX"/><StrRes Name="obFIBDB" ' + 
'Text="База данных FIB"/><StrRes Name="obFIBTb" Text="Таблица FIB"/><StrRes Name="obFIBQ" Text="Запрос FIB"/><StrRes Name="obFIB' + 
'Comps" Text="Компоненты FIB"/><StrRes Name="ctString" Text="Строки"/><StrRes Name="ctDate" Text="Дата и время"/><StrRes Name' + 
'="ctConv" Text="Конвертирование"/><StrRes Name="ctFormat" Text="Форматирование"/><StrRes Name="ctMath" Text="Матема' + 
'тические"/><StrRes Name="ctOther" Text="Прочие"/><StrRes Name="IntToStr" Text="Конвертирует целое число в стр�' + 
'�ку"/><StrRes Name="FloatToStr" Text="Конвертирует вещественное число в строку"/><StrRes Name="DateToStr" Text="' + 
'Конвертирует дату в строку"/><StrRes Name="TimeToStr" Text="Конвертирует время в строку"/><StrRes Name=' + 
'"DateTimeToStr" Text="Конвертирует дату и время в строку"/><StrRes Name="VarToStr" Text="Конвертирует вар�' + 
'�ант в строку"/><StrRes Name="StrToInt" Text="Конвертирует строку в целое число"/><StrRes Name="StrToInt64" Tex' + 
't="Converts a string to an Int64 value"/><StrRes Name="StrToFloat" Text="Конвертирует строку в вещественное число"' + 
'/><StrRes Name="StrToDate" Text="Конвертирует строку в дату"/><StrRes Name="StrToTime" Text="Конвертирует стро�' + 
'�у во время"/><StrRes Name="StrToDateTime" Text="Конвертирует строку в дату и время"/><StrRes Name="Format" Text=' + 
'"Возвращает форматированную строку"/><StrRes Name="FormatFloat" Text="Форматирует вещественное �' + 
'�исло"/><StrRes Name="FormatDateTime" Text="Форматирует дату и время"/><StrRes Name="FormatMaskText" Text="Форматиру' + 
'ет текст, используя заданную маску"/><StrRes Name="EncodeDate" Text="Возвращает значение TDateTime, с�' + 
'�ответствующее заданным значениям Year, Month, Day"/><StrRes Name="DecodeDate" Text="Разбивает значение' + 
' TDateTime на значения Year, Month, Day"/><StrRes Name="EncodeTime" Text="Возвращает значение TDateTime, соответс�' + 
'�вующее заданным значениям Hour, Min, Sec, MSec"/><StrRes Name="DecodeTime" Text="Разбивает значение TDateTime' + 
' на значения Hour, Min, Sec, MSec"/><StrRes Name="Date" Text="Возвращает текущую дату"/><StrRes Name="Time" Text="Во�' + 
'�вращает текущее время"/><StrRes Name="Now" Text="Возвращает текущую дату и время"/><StrRes Name="DayOfW' + 
'eek" Text="Возвращает номер дня недели, соответствующий заданной дате"/><StrRes Name="IsLeapYear" T' + 
'ext="Возвращает True, если заданный год - високосный"/><StrRes Name="DaysInMonth" Text="Возвращает чис' + 
'ло дней в заданном месяце"/><StrRes Name="Length" Text="Возвращает длину строки или массива"/><Str' + 
'Res Name="Copy" Text="Возвращает подстроку"/><StrRes Name="Pos" Text="Возвращает позицию подстроки в с�' + 
'�роке"/><StrRes Name="Delete" Text="Удаляет часть символов строки"/><StrRes Name="Insert" Text="Вставляет по�' + 
'�строку в строку"/><StrRes Name="Uppercase" Text="Конвертирует все символы строки в верхний реги�' + 
'�тр"/><StrRes Name="Lowercase" Text="Конвертирует все символы строки в нижний регистр"/><StrRes Name="Trim' + 
'" Text="Удаляет пробелы в начале и конце строки"/><StrRes Name="NameCase" Text="Конвертирует первый' + 
' символ слова в верхний регистр"/><StrRes Name="CompareText" Text="Сравнивает две строки без учет�' + 
'� регистра"/><StrRes Name="Chr" Text="Конвертирует целое число в символ"/><StrRes Name="Ord" Text="Конверт' + 
'ирует символ в целое число"/><StrRes Name="SetLength" Text="Устанавливает длину строки"/><StrRes Name="R' + 
'ound" Text="Округляет число до ближайшего целого значения"/><StrRes Name="Trunc" Text="Отбрасывает ' + 
'дробную часть числа"/><StrRes Name="Int" Text="Возвращает целую часть вещественного значения' + 
'"/><StrRes Name="Frac" Text="Возвращает дробную часть вещественного значения"/><StrRes Name="Sqrt" Text="В' + 
'озвращает корень квадратный из числа"/><StrRes Name="Abs" Text="Возвращает модуль числа"/><StrRes' + 
' Name="Sin" Text="Возвращает синус угла (в радианах)"/><StrRes Name="Cos" Text="Возвращает косинус угл' + 
'а (в радианах)"/><StrRes Name="ArcTan" Text="Возвращает арктангенс"/><StrRes Name="Tan" Text="Возвращает та�' + 
'�генс"/><StrRes Name="Exp" Text="Возвращает экспоненту"/><StrRes Name="Ln" Text="Возращает натуральный л�' + 
'�гарифм заданного числа"/><StrRes Name="Pi" Text="Возвращает число &#38;#34;пи&#38;#34;"/><StrRes Name="Inc" Text' + 
'="Увеличивает целое число на 1"/><StrRes Name="Dec" Text="Уменьшает целое число на 1"/><StrRes Name="Raise' + 
'Exception" Text="Вызывает исключение"/><StrRes Name="ShowMessage" Text="Показывает окно сообщения"/><StrRes N' + 
'ame="Randomize" Text="Запускает генератор случайных чисел"/><StrRes Name="Random" Text="Возвращает случ�' + 
'�йное число"/><StrRes Name="ValidInt" Text="Возвращает True если заданная строка может быть преобр' + 
'азована в целое число"/><StrRes Name="ValidFloat" Text="Возвращает True если заданная строка может ' + 
'быть преобразована в вещественное число"/><StrRes Name="ValidDate" Text="Возвращает True если зад�' + 
'�нная строка может быть преобразована в дату"/><StrRes Name="IIF" Text="Возвращает TrueValue если �' + 
'�аданное выражение равно True, иначе возвращает FalseValue"/><StrRes Name="Get" Text="Возвращает зна�' + 
'�ение переменной из списка переменных"/><StrRes Name="Set" Text="Устанавливает значение пере�' + 
'�енной из списка переменных"/><StrRes Name="InputBox" Text="Показывает диалог ввода строки"/><StrRes' + 
' Name="InputQuery" Text="Показывает диалог ввода строки"/><StrRes Name="MessageDlg" Text="Показывает окно с�' + 
'�общения"/><StrRes Name="CreateOleObject" Text="Создает OLE объект"/><StrRes Name="VarArrayCreate" Text="Создает масси' + 
'в вариантов"/><StrRes Name="VarType" Text="Возвращает тип варианта"/><StrRes Name="DayOf" Text="Возвращает д' + 
'ень (1..31) даты Date"/><StrRes Name="MonthOf" Text="Возвращает месяц (1..12) даты Date"/><StrRes Name="YearOf" Text="Воз' + 
'вращает год даты Date"/><StrRes Name="ctAggregate" Text="Агрегатные"/><StrRes Name="Sum" Text="Возвращает сумму' + 
' выражения Expr для бэнда Band"/><StrRes Name="Avg" Text="Возвращает среднее значение выражения Exp' + 
'r для бэнда Band"/><StrRes Name="Min" Text="Возвращает минимальное значение выражения Expr для бэн' + 
'да Band"/><StrRes Name="Max" Text="Возвращает максимальное значение выражения Expr для бэнда Band"/><' + 
'StrRes Name="Count" Text="Возвращает количество строк в бэнде Band"/><StrRes Name="wzDBConn" Text="Новое подк�' + 
'�ючение к БД"/><StrRes Name="wzDBTable" Text="Новая таблица"/><StrRes Name="wzDBQuery" Text="Новый запрос"/><StrRes Na' + 
'me="5800" Text="Соединения"/><StrRes Name="5801" Text="Новое"/><StrRes Name="5802" Text="Удалить"/><StrRes Name="cpName" Text="�' + 
'�мя"/><StrRes Name="cpConnStr" Text="Строка подключения"/><StrRes Name="startCreateNew" Text="Создать новый отчет"' + 
'/><StrRes Name="startCreateBlank" Text="Содать пустой отчет"/><StrRes Name="startOpenReport" Text="Открыть отчет"/><StrRe' + 
's Name="startOpenLast" Text="Открыть последний отчет"/><StrRes Name="startEditAliases" Text="Соединения"/><StrRes Name=' + 
'"startHelp" Text="Помощь"/><StrRes Name="5900" Text="Инспектор переменных"/><StrRes Name="5901" Text="Добавить пер' + 
'еменную"/><StrRes Name="5902" Text="Удалить переменную"/><StrRes Name="5903" Text="Редактировать переменн' + 
'ую"/><StrRes Name="6000" Text="Ошибка наследования"/><StrRes Name="6001" Text="Базовый и наследованный отч' + 
'ет имеют одинаковые объекты. Выберите действие:"/><StrRes Name="6002" Text="Удалить одинаковы�' + 
'� объекты"/><StrRes Name="6003" Text="Переименовать объекты"/><StrRes Name="6004" Text="Сортировать по име�' + 
'�и"/></Resources>' + 
' ';

initialization
  frxResources.AddXML(resXML);

end.
