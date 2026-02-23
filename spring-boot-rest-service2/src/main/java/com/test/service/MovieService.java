package com.test.service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.dto.MovieDTO;
import com.test.dto.StudioDTO;
import com.test.mapper.MovieMapper;
import com.test.model.Movie;
import com.test.model.Studio;
import com.test.repository.MovieRepository;
import com.test.repository.StudioRepository;

@Service
@Transactional
public class MovieService {

	@Autowired
	private MovieRepository movieRepository;
	@Autowired
	private StudioRepository studioRepository;
	@Autowired
	private MovieMapper movieMapper;

	public List<MovieDTO> findAll(String category) {
		List<Movie> findAll = null;
		
		if (category != null && !category.isEmpty()) {
			findAll = movieRepository.findAllByCategory(category);
		} else {
			findAll = movieRepository.findAll();
		}
		return findAll.stream().map(m -> movieMapper.toDto(m)).collect(Collectors.toList());
	}

	public MovieDTO findOne(Long id) {
		Optional<Movie> movieOp = movieRepository.findById(id);
		if (movieOp.isPresent()) {
			return movieMapper.toDto(movieOp.get());
		}
		return null;
	}

	public MovieDTO save(MovieDTO movie) {
		Movie entity = movieMapper.toEntity(movie);
		Studio findStudioByName = studioRepository.findStudioByName(movie.getStudio().getName());
		entity.setStudio(findStudioByName);
		Movie saved = movieRepository.save(entity);
		return movieMapper.toDto(saved);
	}

	public MovieDTO update(MovieDTO movie, Long id) {
		Optional<Movie> findById = movieRepository.findById(id);
		if (findById.isPresent()) {
			Movie m = findById.get();
			m.setName(movie.getName());
			m.setCategory(movie.getCategory());
			m.setPrice(movie.getPrice());
			m.setDescription(movie.getDescription());
			if (movie.getStudio() != null && m.getStudio() != null
					&& !m.getStudio().getName().equals(movie.getStudio())) {
				Studio studio = studioRepository.findStudioByName(movie.getName());
				m.setStudio(studio);
			}
			m.setImage(movie.getImage());
			Movie saved = movieRepository.save(m);
			return movieMapper.toDto(saved);
		} else {
			throw new IllegalArgumentException();
		}
	}

	public void delete(Long id) {
		movieRepository.deleteById(id);
	}

	public List<StudioDTO> findAllStudios() {
		List<Studio> findAll = studioRepository.findAll();
		return findAll.stream().map(s -> {
			return new StudioDTO(s.getId(), s.getName(), s.getCity(), s.getState());
		}).collect(Collectors.toList());
	}

}
