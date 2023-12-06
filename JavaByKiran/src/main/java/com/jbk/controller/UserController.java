package com.jbk.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jbk.entity.BuyerDetails;
import com.jbk.entity.ContactDeatils;
import com.jbk.entity.MockData;
import com.jbk.entity.TicketData;
import com.jbk.entity.UserDetails;
import com.jbk.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService ms;
	private boolean isChecked = false;
	private String publicusername = null;
	private List<UserDetails> list;
	private String bEmail = null;

	@RequestMapping("/contact")
	public ModelAndView openContactPage() {

		return new ModelAndView("contact");
	}

	@RequestMapping("/contact-page")
	public ModelAndView openContactpagePage(Model model) {

		if (isChecked) {
			model.addAttribute("name", publicusername);
			return new ModelAndView("contact-page");
		} else {
			return new ModelAndView("register");
		}
	}

	@PostMapping("/contact")
	public void insertContactDetails(@ModelAttribute ContactDeatils cd) {
		ms.insertContactDetails(cd);
	}

	@PostMapping("contact-page")
	public void insertContactpageDetails(@ModelAttribute ContactDeatils cd, Model model) {
		model.addAttribute("name", publicusername);
		ms.insertContactpageDetails(cd);
	}

	@RequestMapping("/about")
	public ModelAndView openAboutPage() {

		return new ModelAndView("about");
	}

	@RequestMapping("/about-page")
	public ModelAndView openAboutpagePage(Model model) {

		if (isChecked) {
			model.addAttribute("name", publicusername);
			return new ModelAndView("about-page");
		} else {
			return new ModelAndView("register");
		}

	}

	@RequestMapping("/courses")
	public ModelAndView openCoursesPage() {

		return new ModelAndView("courses");
	}

	@RequestMapping("/courses-page")
	public ModelAndView openCoursespagePage(Model model) {

		if (isChecked) {
			model.addAttribute("name", publicusername);
			return new ModelAndView("courses-page");
		} else {
			return new ModelAndView("register");
		}
	}

	@RequestMapping("/buy-course")
	public ModelAndView openBuyCoursePage(Model model) {

		model.addAttribute("name1", publicusername);

		return new ModelAndView("buy-course");
	}

	@PostMapping("/buy-course")
	public ModelAndView insertBuyersDeatils(@ModelAttribute BuyerDetails bd,Model model) {

		if (bd.getCourseName().equals("JAVA FULL STACK TRAINING")) {
			bd.setCoursePrice("29999.00");
			bEmail = bd.getBuyerEmail();
			ms.insertBuyersDeatils(bd);
			
		} else if (bd.getCourseName().equals("AWS CERTIFICATION TRAINING")) {
			bd.setCoursePrice("34999.00");
			bEmail = bd.getBuyerEmail();
			ms.insertBuyersDeatils(bd);
		} else if (bd.getCourseName().equals("SELENUIM TESTING TRAINING")) {
			bd.setCoursePrice("29999.00");
			bEmail = bd.getBuyerEmail();
			ms.insertBuyersDeatils(bd);
		} else if (bd.getCourseName().equals("PYTHON FULL STACK TRAINING")) {
			bd.setCoursePrice("28999.00");
			bEmail = bd.getBuyerEmail();
			ms.insertBuyersDeatils(bd);
		} else if (bd.getCourseName().equals("SALESFORCE DEVELOPER TRAINING")) {
			bd.setCoursePrice("34999.00");
			bEmail = bd.getBuyerEmail();
			ms.insertBuyersDeatils(bd);
		} else if (bd.getCourseName().equals("ANGULAR DEVELOPER TRAINING")) {
			bd.setCoursePrice("24999.00");
			bEmail = bd.getBuyerEmail();
			ms.insertBuyersDeatils(bd);
		}
		
		System.out.println("Email issssssss"+bEmail);
		List<BuyerDetails> list = ms.featchBuyersDeatils(bEmail);
		System.out.println("fetch details is here ..."+list);
        model.addAttribute("buyerde", list);
		return new ModelAndView("payment-receipt");
	}

	
	@RequestMapping("/payment-receipt")
	public ModelAndView openPaymentPage() {

		return new ModelAndView("payment-receipt");
	}

//	@GetMapping("/payment-receipt")
//	public ModelAndView featchBuyersDeatils(Model model) {
//		System.out.println("Email issssssss"+bEmail);
//		List<BuyerDetails> list = ms.featchBuyersDeatils(bEmail);
//		System.out.println("fetch details is here ..."+list);
//        model.addAttribute("buyerde", list);
//        
//		return new ModelAndView("payment-receipt");
//	}
	
	@RequestMapping("/java-full-stack")
	public ModelAndView openJFSPage(Model model) {

		model.addAttribute("name1", publicusername);
		return new ModelAndView("java-full-stack");
	}

	@RequestMapping("/aws-certification-training")
	public ModelAndView openACTPage(Model model) {

		model.addAttribute("name1", publicusername);
		return new ModelAndView("aws-certification-training");
	}

	@RequestMapping("/selenium-testing-training")
	public ModelAndView openSTTPage(Model model) {

		model.addAttribute("name1", publicusername);
		return new ModelAndView("selenium-testing-training");
	}

	@RequestMapping("/python-full-stack")
	public ModelAndView openPFSPage(Model model) {

		model.addAttribute("name1", publicusername);
		return new ModelAndView("python-full-stack");
	}

	@RequestMapping("/salesforce-developer-training")
	public ModelAndView openSDTPage(Model model) {

		model.addAttribute("name1", publicusername);
		return new ModelAndView("salesforce-developer-training");
	}

	@RequestMapping("/angular-developer-training")
	public ModelAndView openADTPage(Model model) {

		model.addAttribute("name1", publicusername);
		return new ModelAndView("angular-developer-training");
	}

	@RequestMapping("/book-mock")
	public ModelAndView openBookMockPage(Model model) {

		if (isChecked) {
			model.addAttribute("name", publicusername);
			return new ModelAndView("book-mock");
		} else {
			return new ModelAndView("register");
		}
	}

	@RequestMapping("/schedule-mock")
	public ModelAndView openScheduleMockPage(Model model) {

		if (isChecked) {
			model.addAttribute("puname2", publicusername);
			return new ModelAndView("schedule-mock");
		} else {
			return new ModelAndView("register");
		}
	}

	@PostMapping("/schedule-mock")
	public void insertMockData(@ModelAttribute MockData md, Model model) {

		ms.insertMockData(md);
		model.addAttribute("scheduled", "Your Mock Interview Scheduled Successful");
	}

	@RequestMapping("/support")
	public ModelAndView openSupportPage(Model model) {

		if (isChecked) {
			model.addAttribute("name", publicusername);
			return new ModelAndView("support");
		} else {
			return new ModelAndView("register");
		}
	}

	@RequestMapping("/raise-ticket")
	public ModelAndView openRaiseTicketPage(Model model) {

		if (isChecked) {
			model.addAttribute("puname1", publicusername);
			return new ModelAndView("raise-ticket");
		} else {
			return new ModelAndView("register");
		}

	}

	@PostMapping("raise-ticket")
	public void insertTicketData(@ModelAttribute TicketData td, Model model) {

		ms.insertTicketData(td);
		model.addAttribute("raised", "Ticket raised Successfully...");

	}

	@RequestMapping("/register")
	public ModelAndView openRegisterPage() {

		list = ms.showUsersList();

		return new ModelAndView("register");
	}

	@RequestMapping("/home")
	public ModelAndView openHomePage(Model model) {

		if (isChecked) {
			model.addAttribute("name", publicusername);
			return new ModelAndView("home");
		} else {
			return new ModelAndView("register");
		}
	}

	@RequestMapping("/enquiry")
	public ModelAndView openEnquiryPage() {

		return new ModelAndView("enquiry");
	}

	@RequestMapping("/enquiry-page")
	public ModelAndView openEnquirypage1Page() {

		return new ModelAndView("enquiry-page");

	}

	@PostMapping("enquiry")
	public void insertEnquiryDetails(@ModelAttribute ContactDeatils cd) {

		ms.insertEnquiryDetails(cd);
	}

	@PostMapping("enquiry-page")
	public void insertEnquiryPageDetails(@ModelAttribute ContactDeatils cd) {

		if (isChecked) {

			ms.insertEnquiryPageDetails(cd);
		}

	}

	@RequestMapping("/logout")
	public ModelAndView openIndexPage() {

		isChecked = false;
		if (isChecked) {
			return new ModelAndView("/home");
		} else {
			return new ModelAndView("/index");
		}
	}

	@PostMapping("register")
	public void insertUserDetails(@ModelAttribute UserDetails ud, Model model) {

		for (UserDetails userDetails : list) {

			if (ud.getPassword().equals(ud.getConfirmpass())) {

				if (ud.getEmail().equals(userDetails.getEmail())) {
					model.addAttribute("emailmsg", "Entered email already exists");
				} else if (ud.getUsername().equals(userDetails.getUsername())) {
					model.addAttribute("unamemsg", "Entered Username already exists");
				} else {
					ms.insertUserDetails(ud);
					model.addAttribute("created", "Signup Successful..");
				}
			} else {
				model.addAttribute("msg", "Password and Confirm Password doesnt match");
			}
		}

	}

	@PostMapping("/checksignin")
	public ModelAndView checkSignIn(@RequestParam String username, @RequestParam String password, Model model) {

		List<UserDetails> list = ms.checkSignIn();

		for (UserDetails userDetails : list) {

			if (userDetails.getUsername().equals(username) && userDetails.getPassword().equals(password)) {
				isChecked = true;
				publicusername = username;
				break;
			}
		}
		if (isChecked) {
			model.addAttribute("name", publicusername);
			return new ModelAndView("home");
		} else {
			model.addAttribute("wrong", "Username or password is incorrect");
			return new ModelAndView("register");
		}
	}

	
}
