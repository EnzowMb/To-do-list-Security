package br.edu.ifsp.arq.dw2s6.ea2.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import br.edu.ifsp.arq.dw2s6.ea2.domain.model.User;

public interface UserRepository extends JpaRepository<User, Long>{
	
	public Optional<User> findByEmail(String email);

}
