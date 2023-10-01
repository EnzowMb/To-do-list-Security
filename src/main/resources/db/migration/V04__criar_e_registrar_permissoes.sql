CREATE TABLE permission (
	id BIGINT(20) PRIMARY KEY,
	description VARCHAR(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE user_permission (
	id_user BIGINT(20) NOT NULL,
	id_permission BIGINT(20) NOT NULL,
	PRIMARY KEY (id_user, id_permission),
	FOREIGN KEY (id_user) REFERENCES user(id),
	FOREIGN KEY (id_permission) REFERENCES permission(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- admin
INSERT INTO user (id, name, email, password, active_user) values (3, 'Administrador', 'admin@ifsp.edu.br', '$2a$10$X607ZPhQ4EgGNaYKt3n4SONjIv9zc.VMWdEuhCuba7oLAL5IvcL5.', '1');

-- user
INSERT INTO permission (id, description) values (1, 'ROLE_REGISTER_USER');
INSERT INTO permission (id, description) values (2, 'ROLE_REMOVE_USER');
INSERT INTO permission (id, description) values (3, 'ROLE_SEARCH_USER');

-- task
INSERT INTO permission (id, description) values (4, 'ROLE_REGISTER_TASK');
INSERT INTO permission (id, description) values (5, 'ROLE_REMOVE_TASK');
INSERT INTO permission (id, description) values (6, 'ROLE_SEARCH_TASK');

-- tag
INSERT INTO permission (id, description) values (7, 'ROLE_REGISTER_TAG');
INSERT INTO permission (id, description) values (8, 'ROLE_REMOVE_TAG');
INSERT INTO permission (id, description) values (9, 'ROLE_SEARCH_TAG');

-- fernando
INSERT INTO user_permission (id_user, id_permission) values (1, 1);
INSERT INTO user_permission (id_user, id_permission) values (1, 3);
INSERT INTO user_permission (id_user, id_permission) values (1, 4);
INSERT INTO user_permission (id_user, id_permission) values (1, 5);
INSERT INTO user_permission (id_user, id_permission) values (1, 6);
INSERT INTO user_permission (id_user, id_permission) values (1, 7);
INSERT INTO user_permission (id_user, id_permission) values (1, 8);
INSERT INTO user_permission (id_user, id_permission) values (1, 9);

-- gislaine
INSERT INTO user_permission (id_user, id_permission) values (2, 1);
INSERT INTO user_permission (id_user, id_permission) values (2, 3);
INSERT INTO user_permission (id_user, id_permission) values (2, 4);
INSERT INTO user_permission (id_user, id_permission) values (2, 5);
INSERT INTO user_permission (id_user, id_permission) values (2, 6);
INSERT INTO user_permission (id_user, id_permission) values (2, 7);
INSERT INTO user_permission (id_user, id_permission) values (2, 8);
INSERT INTO user_permission (id_user, id_permission) values (2, 9);

-- admin
INSERT INTO user_permission (id_user, id_permission) values (3, 1);
INSERT INTO user_permission (id_user, id_permission) values (3, 2);
INSERT INTO user_permission (id_user, id_permission) values (3, 3);
INSERT INTO user_permission (id_user, id_permission) values (3, 4);
INSERT INTO user_permission (id_user, id_permission) values (3, 5);
INSERT INTO user_permission (id_user, id_permission) values (3, 6);
INSERT INTO user_permission (id_user, id_permission) values (3, 7);
INSERT INTO user_permission (id_user, id_permission) values (3, 8);
INSERT INTO user_permission (id_user, id_permission) values (3, 9);




