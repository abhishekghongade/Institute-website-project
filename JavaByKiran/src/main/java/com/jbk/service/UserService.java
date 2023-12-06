package com.jbk.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jbk.dao.UserDao;
import com.jbk.entity.BuyerDetails;
import com.jbk.entity.ContactDeatils;
import com.jbk.entity.MockData;
import com.jbk.entity.TicketData;
import com.jbk.entity.UserDetails;

@Service
public class UserService {

	@Autowired
	private UserDao md;

	public void insertContactDetails(ContactDeatils cd) {

		md.insertContactDetails(cd);
	}

	public void insertEnquiryDetails(ContactDeatils cd) {

		md.insertEnquiryDetails(cd);

	}

	public void insertUserDetails(UserDetails ud) {

		md.insertUserDetails(ud);

	}

	public List<UserDetails> checkSignIn() {

		return md.checkSignIn();
	}

	public void insertEnquiryPageDetails(ContactDeatils cd) {
		md.insertEnquiryPageDetails(cd);
	}

	public void insertContactpageDetails(ContactDeatils cd) {

		md.insertContactpageDetails(cd);
	}

	public void insertTicketData(TicketData td) {

		md.insertTicketData(td);
	}

	public void insertMockData(MockData md2) {

		md.insertMockData(md2);

	}

	public List<UserDetails> showUsersList() {

		return md.showUsersList();
	}

	public void insertBuyersDeatils(BuyerDetails bd) {

		 md.insertBuyersDeatils(bd);

	}

	public List<BuyerDetails> featchBuyersDeatils(String bEmail) {

		return md.featchBuyersDeatils(bEmail);
	}

}
