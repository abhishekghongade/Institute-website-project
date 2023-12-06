package com.jbk.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.jbk.entity.AdminDetails;
import com.jbk.entity.BuyerDetails;
import com.jbk.entity.ContactDeatils;
import com.jbk.entity.MockData;
import com.jbk.entity.TicketData;
import com.jbk.entity.UserDetails;
import com.jbk.service.AdminService;

@Controller
public class AdminController {

	@Autowired
	private AdminService as;
	private boolean loginSuccessful = false;
	private String publicUsername = null;
	private List<AdminDetails> list;

	@RequestMapping("/admin-register")
	public ModelAndView openAdminRegisterPage() {

		list = as.checkSignIn();
		return new ModelAndView("admin-register");
	}

	@RequestMapping("/admin-signup")
	public ModelAndView openAdminSignUpPage() {

		if (loginSuccessful) {
			return new ModelAndView("admin-signup");
		} else {
			return new ModelAndView("admin-register");
		}

	}

	@RequestMapping("/admin-home")
	public ModelAndView openAdminHomePage() {
		if (loginSuccessful) {
			return new ModelAndView("admin-home");
		} else {
			return new ModelAndView("admin-register");
		}

	}

	@RequestMapping("/logout-admin")
	public ModelAndView openIndexPage() {

		loginSuccessful = false;
		return new ModelAndView("index");

	}

	@RequestMapping("/support-data")
	public ModelAndView openSupportDataPage(Model model) {

		if (loginSuccessful) {
			List<TicketData> list = as.fetchTicketData();

			model.addAttribute("list", list);
			return new ModelAndView("support-data");
		} else {
			return new ModelAndView("admin-register");
		}

	}

	@RequestMapping("/mock-data")
	public ModelAndView openMockDataPage() {
		if (loginSuccessful) {
			return new ModelAndView("mock-data");
		} else {
			return new ModelAndView("admin-register");
		}

	}

	@RequestMapping("/register-data")
	public ModelAndView openRegisterDataPage() {
		if (loginSuccessful) {
			return new ModelAndView("register-data");
		} else {
			return new ModelAndView("admin-register");
		}

	}

	@RequestMapping("/contact-data")
	public ModelAndView openContactDataPage() {
		if (loginSuccessful) {
			return new ModelAndView("contact-data");
		} else {
			return new ModelAndView("admin-register");
		}
		
	}

	@RequestMapping("/buyer-data")
	public ModelAndView openBuyerDataPage() {
		if (loginSuccessful) {
			return new ModelAndView("/buyer-data");
		} else {
			return new ModelAndView("admin-register");
		}

	}

	@PostMapping("/admin-register")
	public void insertAdminDeatils(@ModelAttribute AdminDetails ad, Model model) {

		for (AdminDetails adminDetails : list) {

			if (ad.getPassword().equals(ad.getConfirmpass())) {

				if (ad.getEmail().equals(adminDetails.getEmail())) {
					model.addAttribute("emailmsg1", "Entered email already exists");
				} else if (ad.getUsername().equals(adminDetails.getUsername())) {
					model.addAttribute("unamemsg1", "Entered Username already exists");
				} else {
					as.insertAdminDeatils(ad);
					model.addAttribute("created1", "Signup Successful..");
				}
			} else {
				model.addAttribute("msg1", "Password and Confirm Password doesnt match");
			}
		}

	}

	@PostMapping("/checkadmin")
	public ModelAndView checkSignIn(@RequestParam String username, @RequestParam String password, Model model) {

		List<AdminDetails> list = as.checkSignIn();

		for (AdminDetails adminDetails : list) {

			if (adminDetails.getUsername().equals(username) && adminDetails.getPassword().equals(password)) {

				loginSuccessful = true;
				publicUsername = username;
				break;
			}
		}

		if (loginSuccessful) {
			model.addAttribute("adminName", publicUsername);
			return new ModelAndView("admin-home");

		} else {
			model.addAttribute("wrong1", "Username or password is incorrect");
			return new ModelAndView("admin-register");
		}

	}

	@GetMapping("/support-data")
	public ModelAndView fetchTicketData(Model model) {

		List<TicketData> list = as.fetchTicketData();

		model.addAttribute("list", list);
		return new ModelAndView("support-data");
	}

	@GetMapping("/mock-data")
	public ModelAndView fetchMockData(Model model) {

		List<MockData> list = as.fetchMockData();

		model.addAttribute("mockdata", list);
		return new ModelAndView("mock-data");
	}

	@GetMapping("/register-data")
	public ModelAndView fetchUserDetails(Model model) {

		List<UserDetails> list = as.fetchUserDetails();

		model.addAttribute("userdata", list);
		return new ModelAndView("register-data");
	}

	@GetMapping("/contact-data")
	public ModelAndView fetchContactData(Model model) {

		List<ContactDeatils> list = as.fetchContactData();

		model.addAttribute("contactdata", list);
		return new ModelAndView("contact-data");
	}

	@GetMapping("/buyer-data")
	public ModelAndView fetchBuyerData(Model model) {

		List<BuyerDetails> list = as.fetchBuyerData();

		model.addAttribute("buyerdata", list);
		return new ModelAndView("buyer-data");
	}

}
