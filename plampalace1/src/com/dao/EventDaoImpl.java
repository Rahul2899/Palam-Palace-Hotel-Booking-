package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.model.Event;
import com.model.EventBooking;

public class EventDaoImpl implements EventDao{
	
	Configuration cfg = new Configuration().configure();
	SessionFactory sf = cfg.buildSessionFactory();

	@Override
	public void addEvent(Event event) {
		// TODO Auto-generated method stub
		Session session=sf.openSession();
		Transaction tr=session.beginTransaction();
		session.save(event);
		tr.commit();
		session.close();	
	}

	@Override
	public List<Event> getAllEvents() {
		// TODO Auto-generated method stub
		Session session=sf.openSession();
		List<Event> list=session.createQuery("from com.model.Event").list();
		session.close();
		return list;
	}

	@Override
	public Event getEventById(int id) {
		// TODO Auto-generated method stub
		Session session=sf.openSession();
		Event event=session.get(Event.class, id);
		session.close();
		return event;
	}

	@Override
	public void bookEvent(EventBooking eventBooking) {
		// TODO Auto-generated method stub
		Session session=sf.openSession();
		Transaction tr=session.beginTransaction();
		session.save(eventBooking);
		tr.commit();
		session.close();
	}

	@Override
	public List<EventBooking> getAllBookedEvents() {
		// TODO Auto-generated method stub
		Session session=sf.openSession();
		List<EventBooking> list=session.createQuery("from com.model.EventBooking").list();
		session.close();
		return list;
	}

}
