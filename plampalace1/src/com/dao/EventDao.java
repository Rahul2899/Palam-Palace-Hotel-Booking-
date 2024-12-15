package com.dao;

import java.util.List;

import com.model.Event;
import com.model.EventBooking;

public interface EventDao {
	void addEvent(Event event);

	List<Event> getAllEvents();
	
	Event getEventById(int id);
	
	void bookEvent(EventBooking eventBooking);
	
	List<EventBooking> getAllBookedEvents();
	

}
