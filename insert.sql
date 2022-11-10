insert into student
values ('Гарри Поттер', 'Хогвартс'),
       ('Седрик Диггори', 'Хогвартс'),
       ('Рон Уизли', 'Хогвартс'),
       ('Гермиона Грейнджер', 'Хогвартс'),
       ('Драко Малфой', 'Хогвартс'),
       ('Флёр Делакур', 'Шармбатон'),
       ('Николас Фламель', 'Шармбатон'),
       ('Орели Дюмон', 'Шармбатон'),
       ('Селин Кастильон', 'Шармбатон'),
       ('Винсент де Трефле-Пике', 'Шармбатон'),
       ('Виктор Крам', 'Дурмстранг'),
       ('Геллерт Грин-де-Вальд', 'Дурмстранг'),
       ('Игорь Каркаров', 'Дурмстранг'),
       ('Баглан Уэллнелли', 'Дурмстранг'),
       ('Груффыд Уэллнелли', 'Дурмстранг');

insert into country
values ('Уэльс', false),
       ('Шотландия', true),
       ('Венгрия', false),
       ('Норвегия', true),
       ('Новая Зеландия', false),
       ('Перу', false),
       ('Румыния', false),
       ('Украина', false),
       ('Швеция', true),
       ('Франция', true),
       ('Россия', true),
       ('Япония', true),
       ('Уганда', true),
       ('Бразилия', true),
       ('США', true),
       ('Китай', true);

insert into school
values ('Хогвартс', 'Шотландия'),
       ('Шармбатон', 'Франция'),
       ('Дурмстранг ', 'Швеция'),
       ('Колдовстворец', 'Россия'),
       ('Махотокоро', 'Япония'),
       ('Уагаду', 'Уганда'),
       ('Кастелобрушу', 'Бразилия'),
       ('Ильверморни', 'США');

insert into color
values ('Алый'),
       ('Зеленый'),
       ('Серый'),
       ('Жемчужный'),
       ('Медный'),
       ('Черный');

insert into vulnerability
values (1, 'Нетерпеливость'),
       (2, 'Зрение'),
       (3, 'Излишнее любопытство'),
       (4, 'Сонливость');

insert into fighting_method
values ('Призыв метлы', 1),
       ('Конъюнктивитус', 2),
       ('Превращение камня в собаку', 3),
       ('Ввод в транс', 4);

insert into dragon
values ('Валлийский зеленый', 1, 0.99, 'Уэльс', 'Зеленый', 4),
       ('Венгерский хвосторог', 5, 0.33, 'Венгрия', 'Черный', 1),
       ('Шведский короткорылый дракон', 1, 0.90, 'Швеция', 'Серый', 3),
       ('Китайский огненный шар', 3, 0.62, 'Китай', 'Алый', 2),
       ('Гебридский чёрный дракон', 4, 0.53, 'Шотландия', 'Черный', 1),
       ('Норвежский горбатый дракон', 2, 0.80, 'Норвегия', 'Серый', 3),
       ('Опаловоглазый антипод', 3, 0.67, 'Новая Зеландия', 'Жемчужный', 2),
       ('Перуанский змеезуб', 3, 0.71, 'Перу', 'Медный', 4),
       ('Румынский длиннорог', 2, 0.76, 'Румыния', 'Зеленый', 1),
       ('Украинский железнобрюхий дракон', 4, 0.47, 'Украина', 'Серый', 2);

insert into type
values ('Чары'),
       ('Зелье'),
       ('Трансфигурация'),
       ('Растение');

insert into breathing_method
values ('Заклинание головного пузыря', 'Чары'),
       ('Человек-акула', 'Трансфигурация'),
       ('Человек-жаба', 'Трансфигурация'),
       ('Не дыши 1 час', 'Зелье'),
       ('Аква-фильтриум', 'Растение'),
       ('Жабросли', 'Растение');

insert into danger
values ('Гриндилоу (морской чёрт)', 0.1, 0.33),
       ('Русалка', 0.7, 0.9),
       ('Тритон', 0.6, 0.8),
       ('Паук', 0.45, 0.6),
       ('Лиана', 0.2, 0.4),
       ('Телепорт', 0.7, 0.99);