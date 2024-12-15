package com.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Room {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
private int room_id;
private int room_no;
private String room_description;
private String room_img;
private String room_status;
@ManyToOne
@JoinColumn(name="rtid")
private RoomType room_type;
@ManyToOne
@JoinColumn(name = "hbid")
private HotelBranch hotelBranch;
private String room_summary;
private String rent;
private String bed_capacity;

public String getRoom_status() {
	return room_status;
}
public void setRoom_status(String room_status) {
	this.room_status = room_status;
}
public int getRoom_id() {
	return room_id;
}
public void setRoom_id(int room_id) {
	this.room_id = room_id;
}
public int getRoom_no() {
	return room_no;
}
public void setRoom_no(int room_no) {
	this.room_no = room_no;
}
public String getRoom_description() {
	return room_description;
}
public void setRoom_description(String room_description) {
	this.room_description = room_description;
}
public String getRoom_img() {
	return room_img;
}
public void setRoom_img(String room_img) {
	this.room_img = room_img;
}
public RoomType getRoom_type() {
	return room_type;
}
public void setRoom_type(RoomType room_type) {
	this.room_type = room_type;
}
public HotelBranch getHotelBranch() {
	return hotelBranch;
}
public void setHotelBranch(HotelBranch hotelBranch) {
	this.hotelBranch = hotelBranch;
}

public String getRoom_summary() {
	return room_summary;
}
public void setRoom_summary(String room_summary) {
	this.room_summary = room_summary;
}
public String getRent() {
	return rent;
}
public void setRent(String rent) {
	this.rent = rent;
}
public String getBed_capacity() {
	return bed_capacity;
}
public void setBed_capacity(String bed_capacity) {
	this.bed_capacity = bed_capacity;
}
@Override
public String toString() {
	return "Room [room_id=" + room_id + ", room_no=" + room_no + ", room_description=" + room_description
			+ ", room_img=" + room_img + ", room_status=" + room_status + ", room_type=" + room_type + ", hotelBranch="
			+ hotelBranch + ", room_summary=" + room_summary + ", rent=" + rent + ", bed_capacity=" + bed_capacity
			+ "]";
}



}
