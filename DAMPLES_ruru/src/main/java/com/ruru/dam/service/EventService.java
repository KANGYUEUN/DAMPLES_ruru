package com.ruru.dam.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ruru.dam.models.Event;

@Service
public class EventService {

    @Autowired
    private EventRepository eventRepository;

    public List<Event> getAllEvents() {
        return eventRepository.findAll();
    }

    public Event saveEvent(Event event) {
        return eventRepository.save(event);
    }

	public List<Day> getCalendarData() {
		// TODO Auto-generated method stub
		return null;
	}

    // 추가적인 서비스 메서드 필요시 선언 가능
}
