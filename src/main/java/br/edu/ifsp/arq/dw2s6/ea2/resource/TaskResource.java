package br.edu.ifsp.arq.dw2s6.ea2.resource;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import br.edu.ifsp.arq.dw2s6.ea2.domain.model.Task;
import br.edu.ifsp.arq.dw2s6.ea2.repository.TaskRepository;
import br.edu.ifsp.arq.dw2s6.ea2.service.TaskService;
import javax.validation.Valid;

@RestController
@RequestMapping("/tasks")
public class TaskResource {
	@Autowired
	private TaskRepository taskRepository;
	
	@Autowired
	private TaskService taskService;
	
	@GetMapping
	@PreAuthorize("hasAuthority('ROLE_SEARCH_TASK') and #oauth2.hasScope('read')")
	public List<Task> list(){
		return taskRepository.findAll();
	}
	
	@GetMapping("/{id}")
	@PreAuthorize("hasAuthority('ROLE_SEARCH_TASK') and #oauth2.hasScope('read')")
	public ResponseEntity<Task> findById(@PathVariable Long id) {
		Optional<Task> task = taskRepository.findById(id);
		if(task.isPresent()) {
			return ResponseEntity.ok(task.get());
		}
		return ResponseEntity.notFound().build();
	}
	
	@DeleteMapping("/{id}")
	@ResponseStatus(HttpStatus.NO_CONTENT)
	@PreAuthorize("hasAuthority('ROLE_REMOVE_TASK') and #oauth2.hasScope('write')")
	public void remove(@PathVariable Long id) {
		taskRepository.deleteById(id);
	}
	
	@PutMapping("/{id}")
	@PreAuthorize("hasAuthority('ROLE_REGISTER_TASK') and #oauth2.hasScope('write')")
	public ResponseEntity<Task> update(@PathVariable Long id, @Valid @RequestBody Task task) {
		Task taskSaved = taskService.update(id, task);
		return ResponseEntity.ok(taskSaved);
	}
	
	@PostMapping
	@ResponseStatus(HttpStatus.CREATED)
	@PreAuthorize("hasAuthority('ROLE_REGISTER_TASK') and #oauth2.hasScope('write')")
	public Task create(@Valid @RequestBody Task task) {
		return taskService.save(task);
	}
}
