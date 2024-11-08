package com.ITS120L.Project.service;
import com.ITS120L.Project.model.Event;
import com.ITS120L.Project.repository.EventRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

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

    @Override
    public Event getEvent(long id) {
        Optional optional = repository.findById(id);
        if (optional.isEmpty())
            return null;
        else
            return (Event) optional.get();
    }

    @Override
    public Event deleteEvent(long id) {
        Optional<Event> event = repository.findById(id);
        if (event.isPresent()) {
            repository.delete(event.get());
        }
        return null;
    }

    @Override
    public Event findEventById(Long eventId) {
        return repository.findById(eventId).orElseThrow(() -> new RuntimeException("Event not found"));
    }

    @Override
    public Event updateEvent(long eventId, Event updatedEvent) {
        Optional<Event> existingEventOpt = repository.findById(eventId);
        if (existingEventOpt.isPresent()) {
            Event existingEvent = existingEventOpt.get();
            existingEvent.setTitle(updatedEvent.getTitle());
            existingEvent.setDescription(updatedEvent.getDescription());
            existingEvent.setLocation(updatedEvent.getLocation());
            existingEvent.setStartDate(updatedEvent.getStartDate());
            existingEvent.setEndDate(updatedEvent.getEndDate());
            return repository.save(existingEvent);
        } else {
            return null;
        }
    }
}

