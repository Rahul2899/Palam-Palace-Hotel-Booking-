package com.model;

import java.time.LocalDate;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Booking {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int b_id;
	private LocalDate checkin_date;
	private LocalDate checkout_date;
	@ManyToOne
	@JoinColumn(name = "room_id")
	private Room room;
	@ManyToOne
	@JoinColumn(name = "rt_id")
	private RoomType roomType;
	@ManyToOne
	@JoinColumn(name = "cust_id")
	private Customer customer;

	@ManyToOne
	@JoinColumn(name = "hb_id")
	private HotelBranch hotel;

	public Booking() {
		super();
	}

	public Booking(LocalDate checkin_date, LocalDate checkout_date, Room room, RoomType roomType, Customer customer,
			HotelBranch hotel) {
		super();
		this.checkin_date = checkin_date;
		this.checkout_date = checkout_date;
		this.room = room;
		this.roomType = roomType;
		this.customer = customer;
		this.hotel = hotel;
	}

	public RoomType getRoomType() {
		return roomType;
	}

	public void setRoomType(RoomType roomType) {
		this.roomType = roomType;
	}

	public HotelBranch getHotel() {
		return hotel;
	}

	public void setHotel(HotelBranch hotel) {
		this.hotel = hotel;
	}

	public int getB_id() {
		return b_id;
	}

	public void setB_id(int b_id) {
		this.b_id = b_id;
	}

	public Room getRoom() {
		return room;
	}

	public void setRoom(Room room) {
		this.room = room;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public LocalDate getCheckin_date() {
		return checkin_date;
	}

	public void setCheckin_date(LocalDate checkin_date) {
		this.checkin_date = checkin_date;
	}

	public LocalDate getCheckout_date() {
		return checkout_date;
	}

	public void setCheckout_date(LocalDate checkout_date) {
		this.checkout_date = checkout_date;
	}

	@Override
	public String toString() {
		return "Booking [b_id=" + b_id + ", checkin_date=" + checkin_date + ", checkout_date=" + checkout_date
				+ ", room=" + room + ", roomType=" + roomType + ", customer=" + customer + ", hotel=" + hotel + "]";
	}

}
