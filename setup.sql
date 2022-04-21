-- creates a user database

CREATE TABLE user(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name VARCHAR(45) NOT NULL,
    last_name VARCHAR(45) NOT NULL,
    hobbies TEXT,
    active BOOLEAN NOT NULL DEFAULT 1
);


INSERT INTO user(
    first_name,
    last_name,
    hobbies
) VALUES (
    "Kevin",
    "SOLDIER",
    "FIREarms"
);


INSERT INTO user(
    first_name,
    last_name,
    hobbies
) VALUES (
    "KJohn",
    "DoR",
    "Mechanic"
);


INSERT INTO user(
    first_name,
    last_name,
    hobbies
) VALUES (
    "General",
    "Patton",
    "War Games"
);

