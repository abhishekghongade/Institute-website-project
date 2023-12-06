package com.jbk.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jbk.entity.BuyerDetails;
import com.jbk.entity.ContactDeatils;
import com.jbk.entity.MockData;
import com.jbk.entity.TicketData;
import com.jbk.entity.UserDetails;

@Repository
public class UserDao {

	@Autowired
	private SessionFactory sf;

	public void insertContactDetails(ContactDeatils cd) {

		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		session.save(cd);
		tr.commit();

	}

	public void insertEnquiryDetails(ContactDeatils cd) {

		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		session.save(cd);
		tr.commit();
	}

	public void insertUserDetails(UserDetails ud) {

		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		session.save(ud);
		tr.commit();
	}

	public List<UserDetails> checkSignIn() {
		Session session = sf.openSession();
		Criteria criteria = session.createCriteria(UserDetails.class);
		List<UserDetails> list = criteria.list();
		return list;
	}

	public void insertEnquiryPageDetails(ContactDeatils cd) {

		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		session.save(cd);
		tr.commit();
	}

	public void insertContactpageDetails(ContactDeatils cd) {

		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		session.save(cd);
		tr.commit();

	}

	public void insertTicketData(TicketData td) {

		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		session.save(td);
		tr.commit();
	}

	public void insertMockData(MockData md2) {

		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		session.save(md2);
		tr.commit();

	}
	
	public List<UserDetails> showUsersList() {
		
		Session session = sf.openSession();
		Criteria criteria = session.createCriteria(UserDetails.class);
		List<UserDetails> list = criteria.list();
		return list;
		
	}

	public 	void insertBuyersDeatils(BuyerDetails bd) {

		
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		session.save(bd);
		tr.commit();
		
		
	}
	

	public List<BuyerDetails> featchBuyersDeatils(String bEmail) {
		Session session= sf.openSession();
		Criteria criteria= session.createCriteria((BuyerDetails.class));
		criteria.add(Restrictions.eq("buyerEmail", bEmail));
		List <BuyerDetails> list = criteria.list();
	
		return list;
		
	}
	
	
	
}
