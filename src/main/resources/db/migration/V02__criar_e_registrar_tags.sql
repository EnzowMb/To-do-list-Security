CREATE TABLE tag (
	id BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO tag (id, name) values (1, 'IFSP-ARQ');
INSERT INTO tag (id, name) values (2, 'Internet');