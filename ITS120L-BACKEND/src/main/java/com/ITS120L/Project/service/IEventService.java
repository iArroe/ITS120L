package com.ITS120L.Project.service;

import com.ITS120L.Project.model.Event;

import java.util.List;

public interface IEventService {
    List<Event> findAll();

    void addEvent(Event event);
}
