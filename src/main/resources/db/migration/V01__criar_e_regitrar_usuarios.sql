CREATE TABLE user (
	id BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL,
	password VARCHAR(150) NOT NULL,
	active_user BOOLEAN NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- senhas: 123456
INSERT INTO user (id, name, email, password, active_user) values (1, 'Fernando Duarte', 'fernandoduarte@ifsp.edu.br', '$2a$10$eOaGkPpaJaG8LrhcWOaKTOQOM15LZdoW10jImmjjVpdLJsmMA5hfq', '1');
INSERT INTO user (id, name, email, password, active_user) values (2, 'Gislaine Rosales', 'gislainerosales@ifsp.edu.br', '$2a$10$eOaGkPpaJaG8LrhcWOaKTOQOM15LZdoW10jImmjjVpdLJsmMA5hfq', '1');