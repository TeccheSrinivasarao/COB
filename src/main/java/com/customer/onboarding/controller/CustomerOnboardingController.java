package com.customer.onboarding.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.customer.onboarding.dao.Customer;
import com.customer.onboarding.service.CustomerOnboardingService;

@Controller
public class CustomerOnboardingController {

	@Autowired
	CustomerOnboardingService service;

	@ModelAttribute(name = "customer")
	public Customer customer() {
		return new Customer();
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
		
		String response = service.saveNewCustomer(customer);
		modelAndView.addObject("message", response);
		modelAndView.setViewName("login");
		return modelAndView;
	}

}
