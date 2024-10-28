package com.ITS120L.Project.service;
import com.ITS120L.Project.model.Event;
import com.ITS120L.Project.repository.EventRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class EventService implements IEventService {
    @Autowired
    private EventRepository repository;

    @Override
    public List<Event> findAll() {
        return (List<Event>) repository.findAll();
    }

    @Override
    public void addEvent(Event event) {
        repository.save(event);
    }

}

