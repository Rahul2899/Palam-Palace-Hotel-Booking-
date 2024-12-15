package com.model;

import java.time.LocalDate;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class EventBooking {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
private int eventbooking_id;
private LocalDate eventdate;
@ManyToOne()
@JoinColumn(name="event_idfk")
private Event event;
@ManyToOne
@JoinColumn(name="hb_idfk")
private HotelBranch hotelBranch;

@ManyToOne
@JoinColumn(name="cust_idfk")
private Customer customer;




public Customer getCustomer() {
	return customer;
}
public void setCustomer(Customer customer) {
	this.customer = customer;
}
public EventBooking() {
	super();
}
public EventBooking(LocalDate eventdate, Event event, HotelBranch hotelBranch, Customer customer) {
	super();
	this.eventdate = eventdate;
	this.event = event;
	this.hotelBranch = hotelBranch;
	this.customer = customer;
}
public int getEventbooking_id() {
	return eventbooking_id;
}
public void setEventbooking_id(int eventbooking_id) {
	this.eventbooking_id = eventbooking_id;
}
public LocalDate getEventdate() {
	return eventdate;
}
public void setEventdate(LocalDate eventdate) {
	this.eventdate = eventdate;
}
public Event getEvent() {
	return event;
}
public void setEvent(Event event) {
	this.event = event;
}
public HotelBranch getHotelBranch() {
	return hotelBranch;
}
public void setHotelBranch(HotelBranch hotelBranch) {
	this.hotelBranch = hotelBranch;
}
@Override
public String toString() {
	return "EventBooking [eventbooking_id=" + eventbooking_id + ", eventdate=" + eventdate + ", event=" + event
			+ ", hotelBranch=" + hotelBranch + "]";
}

}
