-- creates a user database

CREATE TABLE user(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name VARCHAR(45) NOT NULL,
    last_name VARCHAR(45) NOT NULL,
    hobbies TEXT,
    active BOOLEAN NOT NULL DEFAULT 1
);


CREATE TABLE vehicle_type(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    description VARCHAR(64)
);

CREATE TABLE vehicle(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    color VARCHAR(45) NOT NULL,
    license_plate VARCHAR(45) not NULL,
    v_type INTEGER NOT NULL,
    owner_id INTEGER NOT NULL,
    active BOOLEAN DEFAULT 1,
    FOREIGN KEY ( v_type) REFERENCES vehicle_type(id),
    FOREIGN KEY (owner_id) REFERENCES user(id)
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


INSERT INTO vehicle_type (description) VALUES ('Car');
INSERT INTO vehicle_type (description) VALUES ('Truck');
INSERT INTO vehicle_type (description) VALUES ('Suv');
INSERT INTO vehicle_type (description) VALUES ('Motorcycle');
INSERT INTO vehicle_type (description) VALUES ('Bicycle');


INSERT INTO vehicle(
    color,
    license_plate,
    v_type,
    owner_id,
)VALUES(
    "red",
    "DEADBEEF",
    1,
    1
);

INSERT INTO vehicle(
    color,
    license_plate,
    v_type,
    owner_id
)VALUES(
    "green",
    "oif1113",
    2,
    2
);

INSERT INTO vehicle(
    color,
    license_plate,
    v_type,
    owner_id
)VALUES(
    "orange",
    "HELLO1",
    3,
    2
);