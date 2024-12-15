package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.model.RestaurantTableBooking;

public class RestaurantTableDaoImpl implements RestaurantTableDao{
	
	Configuration cfg = new Configuration().configure();
	SessionFactory sf = cfg.buildSessionFactory();
	@Override
	public void bookTable(RestaurantTableBooking booking) {
		// TODO Auto-generated method stub
		Session session=sf.openSession();
		Transaction tr=session.beginTransaction();
		session.save(booking);
		tr.commit();
		session.close();
	}
	@Override
	public List<RestaurantTableBooking> getAllTableBookings() {
		// TODO Auto-generated method stub
		Session session=sf.openSession();
		List<RestaurantTableBooking> list=session.createQuery("from com.model.RestaurantTableBooking").list();
		list.forEach(System.out::println);
		session.close();
		return list;
	}
	
	
}
