package com.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class RoomType {
@Id
@GeneratedValue(strategy = GenerationType.AUTO)
private int rtid;

private String room_type;

public int getRtid() {
	return rtid;
}

public void setRtid(int rtid) {
	this.rtid = rtid;
}

public String getRoom_type() {
	return room_type;
}

public void setRoom_type(String room_type) {
	this.room_type = room_type;
}

@Override
public String toString() {
	return "RoomType [rtid=" + rtid + ", room_type=" + room_type + "]";
}



}
