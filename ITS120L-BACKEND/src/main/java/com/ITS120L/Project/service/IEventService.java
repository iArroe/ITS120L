package com.ITS120L.Project.service;

import com.ITS120L.Project.model.Event;

import java.util.List;
import java.util.Optional;

public interface IEventService {
    List<Event> findAll();

    void addEvent(Event event);

    Event getEvent(long id);

    Event deleteEvent(long id);

    Event findEventById(Long eventId);

    Event updateEvent(long eventId, Event updatedEvent);
}
