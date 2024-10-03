package com.ITS120L.Project.service;

import com.ITS120L.Project.model.Feedback;

import java.util.List;

public interface IFeedbackService {
    List<Feedback> findAll();

    Feedback addFeedback(Feedback feedback);
}
