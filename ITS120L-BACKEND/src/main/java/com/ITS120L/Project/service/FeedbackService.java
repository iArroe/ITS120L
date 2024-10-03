package com.ITS120L.Project.service;
import com.ITS120L.Project.model.Feedback;
import com.ITS120L.Project.repository.FeedbackRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class FeedbackService implements IFeedbackService {
    @Autowired
    private FeedbackRepository repository;

    @Override
    public List<Feedback> findAll() {
        return (List<Feedback>) repository.findAll();
    }

    @Override
    public Feedback addFeedback(Feedback feedback) { return repository.save(feedback);
    }
}

