CREATE TABLE IF NOT EXISTS role
(
    id   INTEGER PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);


CREATE TABLE IF NOT EXISTS user_account
(
    id         INTEGER PRIMARY KEY,
    username   VARCHAR(255) NOT NULL,
    password   VARCHAR(255) NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name  VARCHAR(255) NOT NULL,
    status     VARCHAR(255) NOT NULL,
    created_at VARCHAR(255) NOT NULL
);


CREATE TABLE IF NOT EXISTS user_account_roles
(
    user_id  BIGINT REFERENCES user_account (id) DEFERRABLE INITIALLY DEFERRED NOT NULL,
    roles_id BIGINT REFERENCES role (id) DEFERRABLE INITIALLY DEFERRED         NOT NULL

);



INSERT INTO role
VALUES (1, 'ROLE_USER'),
       (2, 'ROLE_ADMIN');

INSERT INTO user_account
VALUES (1, 'SaraQ', 'A121', 'Sara', 'Conor', 'ACTIVE', '10.10.20'),
       (2, 'ToniW', 'A122', 'Toni', 'Faro', 'ACTIVE', '11.10.20'),
       (3, 'LanaR', 'A123', 'Lana', 'Picasso', 'ACTIVE', '12.10.20'),
       (4, 'BobT', 'A124', 'Bob', 'Busch', 'INACTIVE', '13.10.20'),
       (5, 'LuckS', 'A125', 'Luck', 'Deans', 'ACTIVE', '14.10.20');

INSERT INTO user_account_roles
VALUES (1, '1'),
       (2, '2'),
       (3, '2'),
       (4, '1'),
       (5, '1');







