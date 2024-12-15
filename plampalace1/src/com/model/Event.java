package com.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GeneratorType;

@Entity
@Table(name = "event")
public class Event {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
private int e_id;
private String ename;
private String price;
private String eimg;
private String event_description;
private String event_summary;

public String getEvent_summary() {
	return event_summary;
}
public void setEvent_summary(String event_summary) {
	this.event_summary = event_summary;
}
public String getEvent_description() {
	return event_description;
}
public void setEvent_description(String event_description) {
	this.event_description = event_description;
}
public String getEimg() {
	return eimg;
}
public void setEimg(String eimg) {
	this.eimg = eimg;
}
public int getE_id() {
	return e_id;
}
public void setE_id(int e_id) {
	this.e_id = e_id;
}
public String getEname() {
	return ename;
}
public void setEname(String ename) {
	this.ename = ename;
}
public String getPrice() {
	return price;
}
public void setPrice(String price) {
	this.price = price;
}
@Override
public String toString() {
	return "Event [e_id=" + e_id + ", ename=" + ename + ", price=" + price + ", eimg=" + eimg + ", event_description="
			+ event_description + ", event_summary=" + event_summary + "]";
}



}
