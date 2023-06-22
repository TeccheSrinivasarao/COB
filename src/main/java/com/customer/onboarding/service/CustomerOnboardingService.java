package com.customer.onboarding.service;

import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.customer.onboarding.dao.Customer;
import com.customer.onboarding.mappers.SendEmail;
import com.customer.onboarding.repo.CustomerRepository;

@Service
public class CustomerOnboardingService {

	@Autowired
	CustomerRepository repository;
	
	@Autowired
	SendEmail sendEmail; 

	@Transactional
	public String saveNewCustomer(Customer customer) {

		String uuid = UUID.randomUUID().toString();
		String[] newPasswords = uuid.split("-");
		customer.setPassword(newPasswords[0]);
		customer.setAccountNumber(newPasswords[1] + newPasswords[2] + newPasswords[3]);
		Customer response = repository.save(customer);
		if(null != response.getCustomerId()) {
			sendEmail.sendEmailForgotPassword(customer.getEmail(), newPasswords[0], "Hi You Registration is successful and your password is :");
			return "Customer Resgistered Successfully, Password sent to registered emailId";
		}
		return "Customer Already Existed with given Phone Number/ EmailId";
	}

}
