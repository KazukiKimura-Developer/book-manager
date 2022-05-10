CREATE TABLE user (
    id bigint NOT NULL,
    email varchar(256) UNIQUE NOT NULL,
    password varchar(128) NOT NULL,
    name varchar(32) NOT NULL,
    role_type enum('ADMIN', 'USER'),
    primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE book (
    id bigint NOT NULL,
    title varchar(128) NOT NULL,
    author varchar(32) NOT NULL,
    release_date date NOT NULL,
    primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE rental (
    book_id bigint NOT NULL,
    user_id bigint NOT NULL,
    rental_datetime datetime NOT NULL,
    return_deadline datetime NOT NULL,
    primary key (book_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


insert into book values
    (100, 'Kotlin入門', 'コトリン太郎', '1950-10-01'),
    (200, 'Java入門', 'ジャヴァ太郎', '2005-08-29');

insert into user values
    (1, 'admin@test.com', '$2y$05$QpIJCGEAiokGaRizRpKETedkRSIcOnEUYUYmlM9fUQEmNvN8VrWmS', '管理者', 'ADMIN'),
    (2, 'user@test.com', '$2y$05$6H1J4DXpWL/hZcdc2.Q3KuoxpTEsNNfdHnCYEmMuKMThiIbiyZDCm', 'ユーザー', 'USER');

