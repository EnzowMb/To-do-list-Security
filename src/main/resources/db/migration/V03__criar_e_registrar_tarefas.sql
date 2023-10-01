CREATE TABLE task (
	id BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
	description VARCHAR(50) NOT NULL,
	task_date DATE NOT NULL,
	observation VARCHAR(150) NOT NULL,
	user_id BIGINT(20) NOT NULL,
	FOREIGN KEY (user_id) REFERENCES user(id),
	tag_id BIGINT(20) NOT NULL,
	FOREIGN KEY (tag_id) REFERENCES tag(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO task (description, task_date, observation, user_id, tag_id) values ('Exercício Avaliativo 2 - DW2S6', '2023-09-29', '', 1, 1);
INSERT INTO task (description, task_date, observation, user_id, tag_id) values ('Escrever e-mail para o professor', '2023-09-28', 'Perguntar do Exercício Avaliativo', 1, 2);
