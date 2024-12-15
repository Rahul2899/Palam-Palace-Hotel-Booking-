package com.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity
public class Customer {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
private int cust_id;
private String cust_name;
private String cust_address;
private String password;
private String cust_email;
private String cust_phone;
private String cust_idproof;
public int getCust_id() {
	return cust_id;
}
public void setCust_id(int cust_id) {
	this.cust_id = cust_id;
}
public String getCust_name() {
	return cust_name;
}
public void setCust_name(String cust_name) {
	this.cust_name = cust_name;
}
public String getCust_address() {
	return cust_address;
}
public void setCust_address(String cust_address) {
	this.cust_address = cust_address;
}
public String getCust_email() {
	return cust_email;
}
public void setCust_email(String cust_email) {
	this.cust_email = cust_email;
}
public String getCust_phone() {
	return cust_phone;
}
public void setCust_phone(String cust_phone) {
	this.cust_phone = cust_phone;
}
public String getCust_idproof() {
	return cust_idproof;
}
public void setCust_idproof(String cust_idproof) {
	this.cust_idproof = cust_idproof;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
@Override
public String toString() {
	return "Customer [cust_id=" + cust_id + ", cust_name=" + cust_name + ", cust_address=" + cust_address
			+ ", password=" + password + ", cust_email=" + cust_email + ", cust_phone=" + cust_phone + ", cust_idproof="
			+ cust_idproof + "]";
}


}
