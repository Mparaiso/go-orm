-- +migrate Up
CREATE TABLE user_infos(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	nicename VARCHAR(50),
	url VARCHAR(100),
	registered TIMESTAMP NOT NULL DEFAULT(datetime('now')),
	activation_key VARCHAR(50),
	status INTEGER,
	display_name VARCHAR(250),
	user_id INTEGER REFERENCES user(id) ON DELETE CASCADE
);

-- +migrate Down

DROP TABLE user_infos;