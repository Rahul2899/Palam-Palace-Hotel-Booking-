package com.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class HotelBranch {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
private int hb_id;
private String branch_name;
private String branch_location;
private String branch_phone;
private String branch_email;
@ManyToOne
@JoinColumn(name = "service_id")
private Services services;

public int getHb_id() {
	return hb_id;
}
public void setHb_id(int hb_id) {
	this.hb_id = hb_id;
}
public String getBranch_name() {
	return branch_name;
}
public void setBranch_name(String branch_name) {
	this.branch_name = branch_name;
}
public String getBranch_location() {
	return branch_location;
}
public void setBranch_location(String branch_location) {
	this.branch_location = branch_location;
}
public String getBranch_phone() {
	return branch_phone;
}
public void setBranch_phone(String branch_phone) {
	this.branch_phone = branch_phone;
}
public String getBranch_email() {
	return branch_email;
}
public void setBranch_email(String branch_email) {
	this.branch_email = branch_email;
}
public Services getServices() {
	return services;
}
public void setServices(Services services) {
	this.services = services;
}
@Override
public String toString() {
	return "HotelBranch [hb_id=" + hb_id + ", branch_name=" + branch_name + ", branch_location=" + branch_location
			+ ", branch_phone=" + branch_phone + ", branch_email=" + branch_email + ", services=" + services + "]";
}


}
