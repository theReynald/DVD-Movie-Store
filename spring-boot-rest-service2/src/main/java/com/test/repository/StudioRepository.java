package com.test.repository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.test.model.Studio;
@Repository
public interface StudioRepository extends JpaRepository<Studio, Long> {
	Studio findStudioByName(String name);
}
