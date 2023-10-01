package br.edu.ifsp.arq.dw2s6.ea2.service;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Service;

import br.edu.ifsp.arq.dw2s6.ea2.domain.model.Tag;
import br.edu.ifsp.arq.dw2s6.ea2.repository.TagRepository;

@Service
public class TagService {
	
	@Autowired
	private TagRepository tagRepository;
	
	public Tag update(Long id, Tag tag) {
		Tag tagSaved = tagRepository.findById(id).orElseThrow(() -> new EmptyResultDataAccessException(1));
		BeanUtils.copyProperties(tag, tagSaved, "id");
		return tagRepository.save(tagSaved);
	}
}
