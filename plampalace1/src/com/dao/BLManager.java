package com.dao;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;
import java.util.logging.SimpleFormatter;

import javax.servlet.http.HttpSession;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;
import org.hibernate.query.Query;

import com.model.Booking;
import com.model.Customer;
import com.model.HotelBranch;
import com.model.Room;
import com.model.RoomType;
import com.model.Staff;

public class BLManager {

	Configuration cfg = new Configuration().configure();
	SessionFactory sf = cfg.buildSessionFactory();

	/*
	 * public void saveRoom(Room r) { Session s1 = sf.openSession(); Transaction t =
	 * s1.beginTransaction(); s1.save(r); t.commit(); s1.close(); } public void
	 * saveHotel(HotelBranch hb) { Session s1 = sf.openSession(); Transaction t =
	 * s1.beginTransaction(); s1.save(hb); t.commit(); s1.close(); } public
	 * List<Services> SearchServiceslist() { Session s1 = sf.openSession(); Criteria
	 * cr = s1.createCriteria(Services.class); List<Services> s = cr.list(); return
	 * s; } public List<HotelBranch> SearchBranchlist() { Session s1 =
	 * sf.openSession(); Criteria cr = s1.createCriteria(HotelBranch.class);
	 * List<HotelBranch> s = cr.list(); return s; } public Services
	 * SearchByServicesName(String service_name) { Session s1 = sf.openSession();
	 * Criteria cr = s1.createCriteria(Services.class);
	 * cr.add(Restrictions.eq("Services", service_name)); Services e = (Services)
	 * cr.uniqueResult(); return e; }
	 */
	// ---------------------------------------
	public void saveCust(Customer r) {
		Session s1 = sf.openSession();
		Transaction t = s1.beginTransaction();
		s1.save(r);
		t.commit();
		s1.close();
	}

	public void saveStaff(Staff r) {
		Session s1 = sf.openSession();
		Transaction t = s1.beginTransaction();
		s1.save(r);
		t.commit();
		s1.close();
	}

	public List<Customer> getAllCustomer() {
		Session s1 = sf.openSession();
		@SuppressWarnings("deprecation")
		Criteria cr = s1.createCriteria(Customer.class);
		List<Customer> s = cr.list();
		return s;
	}

	public Customer getCustById(int id) {
		Session s = sf.openSession();
		Customer customer = (Customer) s.get(Customer.class, id);
		s.close();
		return customer;
	}

	public void updateCust(Customer customer) {
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		s.saveOrUpdate(customer);
		t.commit();
		s.close();
	}

	public void updateStaff(Staff staff) {
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		s.saveOrUpdate(staff);
		t.commit();
		s.close();
	}

	public void deleteStaff(Staff staff) {
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		s.delete(staff);
		t.commit();
		s.close();
	}

	public List<Staff> getAllStaff() {
		Session s1 = sf.openSession();
		@SuppressWarnings("deprecation")
		Criteria cr = s1.createCriteria(Staff.class);
		List<Staff> s = cr.list();
		return s;
	}

	public List<RoomType> getAllRoomType() {
		Session s1 = sf.openSession();
		@SuppressWarnings("deprecation")
		Criteria cr = s1.createCriteria(RoomType.class);
		List<RoomType> s = cr.list();
		return s;
	}

	public Staff getStaffById(int id) {
		Session s = sf.openSession();
		Staff staff = (Staff) s.get(Staff.class, id);
		s.close();
		return staff;
	}

	public Booking getBookingById(int id) {
		Session s = sf.openSession();
		Booking booking = (Booking) s.get(Booking.class, id);
		s.close();
		return booking;
	}

	public void deleteBooking(Booking booking) {
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		s.delete(booking);
		t.commit();
		s.close();
	}

	public void saveRoom(Room r) {
		Session s1 = sf.openSession();
		Transaction t = s1.beginTransaction();
		s1.save(r);
		t.commit();
		s1.close();
	}

	public List<Room> getAllRoom() {
		Session s1 = sf.openSession();
		@SuppressWarnings("deprecation")
		Criteria cr = s1.createCriteria(Room.class);
		List<Room> s = cr.list();
		return s;
	}

	public HotelBranch SearchByBranch(String bname) {
		Session s1 = sf.openSession();
		Criteria cr = s1.createCriteria(HotelBranch.class);
		cr.add(Restrictions.eq("branch_location", bname));
		HotelBranch e = (HotelBranch) cr.uniqueResult();
		return e;
	}

	public List<HotelBranch> SearchHotelBranchlist() {
		Session s1 = sf.openSession();
		Criteria cr = s1.createCriteria(HotelBranch.class);
		List<HotelBranch> s = cr.list();
		return s;
	}

	public Room SearchByRoom(int id1) {
		Session s1 = sf.openSession();
		Criteria cr = s1.createCriteria(Room.class);
		cr.add(Restrictions.eq("room_id", id1));
		Room e = (Room) cr.uniqueResult();
		return e;
	}

	public Room SearchByRoom_no(int room_no) {
		Session s1 = sf.openSession();
		Criteria cr = s1.createCriteria(Room.class);
		cr.add(Restrictions.eq("room_no", room_no));
		Room e = (Room) cr.uniqueResult();
		return e;
	}

	public void updateRoom(Room e) {
		Session s1 = sf.openSession();
		Transaction t = s1.beginTransaction();
		s1.merge(e);
		t.commit();
		s1.close();
	}

	public List<HotelBranch> getAllBranch() {
		Session s1 = sf.openSession();
		@SuppressWarnings("deprecation")
		Criteria cr = s1.createCriteria(HotelBranch.class);
		List<HotelBranch> s = cr.list();
		return s;
	}

	public List<Booking> getAllBooking() {
		Session s1 = sf.openSession();
		@SuppressWarnings("deprecation")
		Criteria cr = s1.createCriteria(Booking.class);
		List<Booking> s = cr.list();
		return s;
	}

	public Customer SearchByCustomer(String cust_email) {
		Session s1 = sf.openSession();
		Criteria cr = s1.createCriteria(Customer.class);
		cr.add(Restrictions.eq("cust_email", cust_email));
		Customer e = (Customer) cr.uniqueResult();
		return e;
	}

	public boolean validate(String email, String pass, HttpSession session) {
		Session s = sf.openSession();
		Query q = s.createQuery("From Customer where cust_email= :email and password= :pass");
		q.setParameter("email", email);
		q.setParameter("pass", pass);

		Customer c = (Customer) q.uniqueResult();

		if (c != null) {
			session.setAttribute("customer", c);
			return true;
		} else {
			return false;
		}
	}

	public List<Room> getRoomsByHbAndRoomType(HotelBranch hb, RoomType rt) {
		Session session = sf.openSession();
		List<Room> list = session.createQuery(
				"from com.model.Room where hotelBranch.hb_id=" + hb.getHb_id() + " and room_type.rtid=" + rt.getRtid())
				.list();
		session.close();
		return list;
	}

	public void saveBooking(Booking r) {
		Session s1 = sf.openSession();
		Transaction t = s1.beginTransaction();
		s1.save(r);
		t.commit();
		s1.close();
	}

	public List<Room> checkRooms(int id) {
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		List<Room> list = s.createQuery("from com.model.Room  where branch.hb_id='" + id + "'").list();
		t.commit();
		s.close();
		return list;
	}

	public HotelBranch getHotelBranchById(int id) {
		Session session = sf.openSession();
		HotelBranch hb = session.get(HotelBranch.class, id);
		session.close();
		return hb;
	}

	public List<Room> getRoomByHotelBranch(HotelBranch branch) {
		Session session = sf.openSession();
		List<Room> list = session.createQuery("from com.model.Room where hotelBranch.hb_id=" + branch.getHb_id())
				.list();
		session.close();
		return list;
	}

	public RoomType getRoomTypeById(int id) {
		Session session = sf.openSession();
		RoomType roomType = session.get(RoomType.class, id);
		session.close();
		return roomType;
	}

	public RoomType getRoomTypeByName(String rname) {
		Session session = sf.openSession();
		List<RoomType> list = session.createQuery("from com.model.RoomType where room_type='" + rname + "'").list();
		session.close();
		RoomType roomType = list.get(0);
		return roomType;

	}
	

	public List<Booking> getRoomByCheckinCheckout(LocalDate checkin_date, LocalDate checkout_date, HotelBranch hb, RoomType rt) {
		System.out.println(checkin_date+", "+checkout_date);
		//SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd");
		Session session = sf.openSession();
		List<Booking> list = session
				.createQuery("from com.model.Booking where hotel.hb_id=" + hb.getHb_id() + " and roomType.rtid=" + rt.getRtid()
						+ " and checkin_date>='"+checkin_date + "' and checkout_date<='" +checkout_date+"'")
				.list();
		session.close();
		return list;
	}
	// select v.vendorName, c.customerName from Vendor v Left Join v.children c

	public Room getRoomById(int id) {
		Session session=sf.openSession();
		Room room=session.get(Room.class, id);
		session.close();
		return room;
	}

}
