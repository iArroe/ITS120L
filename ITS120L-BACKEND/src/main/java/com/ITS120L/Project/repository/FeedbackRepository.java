package com.ITS120L.Project.repository;

import com.ITS120L.Project.model.Feedback;
import com.ITS120L.Project.model.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface FeedbackRepository extends CrudRepository <Feedback, Long> {
}