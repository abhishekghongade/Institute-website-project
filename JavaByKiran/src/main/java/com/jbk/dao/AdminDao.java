package com.jbk.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jbk.entity.AdminDetails;
import com.jbk.entity.BuyerDetails;
import com.jbk.entity.ContactDeatils;
import com.jbk.entity.MockData;
import com.jbk.entity.TicketData;
import com.jbk.entity.UserDetails;

@Repository
public class AdminDao {

	@Autowired
	private SessionFactory sf;

	public void insertAdminDeatils(AdminDetails ad) {

		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		session.save(ad);
		tr.commit();
	}

	public List<AdminDetails> checkSignIn() {

		Session session = sf.openSession();
		Criteria criteria = session.createCriteria(AdminDetails.class);
		return criteria.list();
	}

	public List<TicketData> fetchTicketData() {

		Session session = sf.openSession();
		Criteria criteria = session.createCriteria(TicketData.class);
		return criteria.list();
	}

	public List<MockData> fetchMockData() {

		Session session = sf.openSession();
		Criteria criteria = session.createCriteria(MockData.class);
		return criteria.list();
	}

	public List<UserDetails> fetchUserDetails() {

		Session session = sf.openSession();
		Criteria criteria = session.createCriteria(UserDetails.class);
		return criteria.list();
	}

	public List<ContactDeatils> fetchContactData() {

		Session session = sf.openSession();
		Criteria criteria = session.createCriteria(ContactDeatils.class);
		return criteria.list();
	}
	
	public List<BuyerDetails> fetchBuyerData() {

		Session session = sf.openSession();
		Criteria criteria = session.createCriteria(BuyerDetails.class);
		return criteria.list();
	}
	

}
