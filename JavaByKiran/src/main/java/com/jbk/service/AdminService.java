package com.jbk.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jbk.dao.AdminDao;
import com.jbk.entity.AdminDetails;
import com.jbk.entity.BuyerDetails;
import com.jbk.entity.ContactDeatils;
import com.jbk.entity.MockData;
import com.jbk.entity.TicketData;
import com.jbk.entity.UserDetails;

@Service
public class AdminService {

	@Autowired
	private AdminDao adminDao;

	public void insertAdminDeatils(AdminDetails ad) {

		adminDao.insertAdminDeatils(ad);

	}

	public List<AdminDetails> checkSignIn() {

		return adminDao.checkSignIn();
	}

	public List<TicketData> fetchTicketData() {

		return adminDao.fetchTicketData();
	}

	public List<MockData> fetchMockData() {

		return adminDao.fetchMockData();
	}

	public List<UserDetails> fetchUserDetails() {

		return adminDao.fetchUserDetails();
	}

	public List<ContactDeatils> fetchContactData() {

		return adminDao.fetchContactData();
	}

	public List<BuyerDetails> fetchBuyerData() {

		return adminDao.fetchBuyerData();
	}

}
