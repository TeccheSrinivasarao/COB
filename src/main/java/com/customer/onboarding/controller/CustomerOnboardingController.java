package com.customer.onboarding.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.customer.onboarding.dao.ConfirmPassword;
import com.customer.onboarding.dao.Customer;
import com.customer.onboarding.dao.Transactions;
import com.customer.onboarding.service.CustomerOnboardingService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class CustomerOnboardingController {

	@Autowired
	CustomerOnboardingService service;

	@ModelAttribute(name = "customer")
	public Customer customer() {
		return new Customer();
	}

	@ModelAttribute(name = "confirmPassword")
	public ConfirmPassword confirmPassword() {
		return new ConfirmPassword();
	}

	@GetMapping(path = { "/", "/home" })
	public String test() {
		return "login";
	}

	@GetMapping(path = { "/displayRegiser" })
	public String displayRegisterCustomer() {
		return "register";
	}

	@PostMapping(path = "/registerNewCustomer")
	public ModelAndView newCustomer(@ModelAttribute Customer customer) {
		ModelAndView modelAndView = new ModelAndView();

		Map<String, String> response = new HashMap<>();
		response = service.saveNewCustomer(customer);
		if ("!NewCustomer".equalsIgnoreCase(response.get("meesage"))) {
			modelAndView.addObject("message", response);
			modelAndView.setViewName("login");
			return modelAndView;
		}

		modelAndView.addObject("customerId", response.get("customerId"));
		modelAndView.setViewName("password");
		return modelAndView;
	}

	@PostMapping(path = "/confirmPassword")
	public ModelAndView createUserPassword(@ModelAttribute ConfirmPassword confirmPassword) {
		ModelAndView modelAndView = new ModelAndView();
		String response = service.createUserPassword(confirmPassword);
		modelAndView.addObject("message", response);
		modelAndView.setViewName("login");
		return modelAndView;
	}

	@PostMapping(path = "/login")
	public ModelAndView login(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		String userName = request.getParameter("phoneNumber");
		String password = request.getParameter("password");

		Customer customer = service.checkLoginUser(userName, password);
		if (null != customer) {
			modelAndView.addObject("customerId", customer.getCustomerId());
			modelAndView.addObject("CREDIT_CARD", "150000");
			modelAndView.addObject("UPI", "200000");
			modelAndView.addObject("TOTAL_COUNT", "350000");
			modelAndView.setViewName("home");
			return modelAndView;
		}
		modelAndView.addObject("message", "Invalid Username or Password");
		modelAndView.setViewName("login");
		return modelAndView;

	}

	@GetMapping(path = "/getOverView/{customerId}")
	public ModelAndView getOverView(@PathVariable String customerId) {
		ModelAndView modelAndView = new ModelAndView();
		Customer customer = service.findCrustomerDetails(customerId);
		modelAndView.addObject("customer", customer);
		modelAndView.addObject("cusomerId", customer.getCustomerId());
		modelAndView.setViewName("overView");
		return modelAndView;

	}

	@GetMapping(path = "/charts/{customerId}")
	public ModelAndView charts(@PathVariable String customerId) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("cusomerId", customerId);
		modelAndView.addObject("CREDIT_CARD", "150000");
		modelAndView.addObject("UPI", "200000");
		modelAndView.addObject("TOTAL_COUNT", "350000");
		modelAndView.setViewName("home");
		return modelAndView;
	}

	@GetMapping(path = "/logout")
	public ModelAndView logout() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("login");
		return modelAndView;
	}

	@GetMapping(path = "/transactionHistory/{customerId}")
	public ModelAndView transaction(@PathVariable String customerId) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("customerId", customerId);
		modelAndView.setViewName("transactions");
		return modelAndView;
	}
	
	@GetMapping(path = "/transactionsHistory/{customerId}")
	public ModelAndView displayTransactions(@PathVariable String customerId,HttpServletRequest request) {
		String option = request.getParameter("txOption");
		ModelAndView modelAndView = new ModelAndView();
		List<Transactions> transactionsList = new ArrayList<>();
		if("mini".equalsIgnoreCase(option)) {
			transactionsList = service.getMiniStatement();
		}else if("onemonth".equalsIgnoreCase(option)) {
			transactionsList = service.getOneMonthStatement();
		}else if("3months".equalsIgnoreCase(option)) {
			transactionsList = service.get3MonthsStatement();
		}else if("oneyear".equalsIgnoreCase(option)) {
			transactionsList = service.get1YearStatement();
		}
			
		
		modelAndView.addObject("transactionsList", transactionsList);
		
		modelAndView.addObject("customerId", customerId);
		modelAndView.setViewName("transactions");
		return modelAndView;
	}
}
