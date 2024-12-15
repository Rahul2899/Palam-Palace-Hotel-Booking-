package com.dao;

import java.util.List;

import com.model.RestaurantTableBooking;

public interface RestaurantTableDao {

	void bookTable(RestaurantTableBooking booking);
	
	List<RestaurantTableBooking> getAllTableBookings();
		
}
