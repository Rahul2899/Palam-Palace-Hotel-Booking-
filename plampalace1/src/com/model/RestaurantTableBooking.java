package com.model;

import java.time.LocalDate;
import java.time.LocalTime;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
@Entity
public class RestaurantTableBooking {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
private int tableId;
private int tableno;
@ManyToOne
@JoinColumn(name="cidfk")
private Customer customer;
@ManyToOne
@JoinColumn(name="hbidfk")
private HotelBranch hotelBranch;
private String noofGuests;
private LocalDate reservationDate;
private LocalTime reservationTime;
private String reservationCharges;

public String getNoofGuests() {
	return noofGuests;
}
public void setNoofGuests(String noofGuests) {
	this.noofGuests = noofGuests;
}
public LocalDate getReservationDate() {
	return reservationDate;
}
public void setReservationDate(LocalDate reservationDate) {
	this.reservationDate = reservationDate;
}
public LocalTime getReservationTime() {
	return reservationTime;
}
public void setReservationTime(LocalTime reservationTime) {
	this.reservationTime = reservationTime;
}
public int getTableId() {
	return tableId;
}
public void setTableId(int tableId) {
	this.tableId = tableId;
}
public int getTableno() {
	return tableno;
}
public void setTableno(int tableno) {
	this.tableno = tableno;
}
public Customer getCustomer() {
	return customer;
}
public void setCustomer(Customer customer) {
	this.customer = customer;
}
public HotelBranch getHotelBranch() {
	return hotelBranch;
}
public void setHotelBranch(HotelBranch hotelBranch) {
	this.hotelBranch = hotelBranch;
}

public String getReservationCharges() {
	return reservationCharges;
}
public void setReservationCharges(String reservationCharges) {
	this.reservationCharges = reservationCharges;
}
@Override
public String toString() {
	return "RestaurantTableBooking [tableId=" + tableId + ", tableno=" + tableno + ", customer=" + customer
			+ ", hotelBranch=" + hotelBranch + ", reservationDate=" + reservationDate + ", reservationTime="
			+ reservationTime + ", reservationCharges=" + reservationCharges + "]";
}


}
