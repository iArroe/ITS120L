package com.ITS120L.Project.repository;

import com.ITS120L.Project.model.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends CrudRepository <User, Long> {
    User findByEmail(String email);
}