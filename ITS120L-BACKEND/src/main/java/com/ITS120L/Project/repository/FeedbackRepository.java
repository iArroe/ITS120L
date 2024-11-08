package com.ITS120L.Project.repository;

import com.ITS120L.Project.model.Feedback;
import com.ITS120L.Project.model.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface FeedbackRepository extends CrudRepository <Feedback, Long> {
    List<Feedback> findByEventEventId(Long eventId);
}