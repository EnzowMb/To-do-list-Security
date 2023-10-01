package br.edu.ifsp.arq.dw2s6.ea2.service;

import java.util.Optional;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Service;

import br.edu.ifsp.arq.dw2s6.ea2.domain.model.Task;
import br.edu.ifsp.arq.dw2s6.ea2.domain.model.User;
import br.edu.ifsp.arq.dw2s6.ea2.exceptionhandler.NonExistentOrInactiveUserException;
import br.edu.ifsp.arq.dw2s6.ea2.repository.TaskRepository;
import br.edu.ifsp.arq.dw2s6.ea2.repository.UserRepository;

@Service
public class TaskService {
	@Autowired
	private TaskRepository taskRepository;
	
	@Autowired
	private UserRepository userRepository;
	
	public Task save(Task task) {
		Optional<User> user = userRepository.findById(task.getUser().getId());
		if(!user.isPresent() || !user.get().isActive()) {
			throw new NonExistentOrInactiveUserException();
		}
		return taskRepository.save(task);
	}
	
	public Task update(Long id, Task task) {
		Task taskSaved = taskRepository.findById(id).orElseThrow(() -> new EmptyResultDataAccessException(1));
		BeanUtils.copyProperties(task, taskSaved, "id");
		return taskRepository.save(taskSaved);
	}
}
