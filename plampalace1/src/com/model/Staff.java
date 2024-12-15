package com.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Staff {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
private int staff_id;
private String staff_fname;
private String staff_lname;
private String staff_email;
private String staff_joinDate;
private String staff_designationl;
private String staff_geneder;
private String staff_phone;
private String staff_idproof;
public int getStaff_id() {
	return staff_id;
}
public void setStaff_id(int staff_id) {
	this.staff_id = staff_id;
}
public String getStaff_fname() {
	return staff_fname;
}
public void setStaff_fname(String staff_fname) {
	this.staff_fname = staff_fname;
}
public String getStaff_lname() {
	return staff_lname;
}
public void setStaff_lname(String staff_lname) {
	this.staff_lname = staff_lname;
}
public String getStaff_email() {
	return staff_email;
}
public void setStaff_email(String staff_email) {
	this.staff_email = staff_email;
}
public String getStaff_joinDate() {
	return staff_joinDate;
}
public void setStaff_joinDate(String staff_joinDate) {
	this.staff_joinDate = staff_joinDate;
}
public String getStaff_designationl() {
	return staff_designationl;
}
public void setStaff_designationl(String staff_designationl) {
	this.staff_designationl = staff_designationl;
}
public String getStaff_geneder() {
	return staff_geneder;
}
public void setStaff_geneder(String staff_geneder) {
	this.staff_geneder = staff_geneder;
}
public String getStaff_phone() {
	return staff_phone;
}
public void setStaff_phone(String staff_phone) {
	this.staff_phone = staff_phone;
}
public String getStaff_idproof() {
	return staff_idproof;
}
public void setStaff_idproof(String staff_idproof) {
	this.staff_idproof = staff_idproof;
}






}
