package com.customer.onboarding.service;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.customer.onboarding.dao.ConfirmPassword;
import com.customer.onboarding.dao.Customer;
import com.customer.onboarding.dao.Transactions;
import com.customer.onboarding.repo.CustomerRepository;

@Service
public class CustomerOnboardingService {

	@Autowired
	CustomerRepository repository;

	@Transactional()
	public Map<String, String> saveNewCustomer(Customer customer) {

		Map<String, String> responseMap = new HashMap<>();
		Customer existsCheck = repository.findByEmailOrPhoneNumber(customer.getEmail(), customer.getPhoneNumber());
		if (null != existsCheck) {
			responseMap.put("meesage", "Customer Already Existed with given Phone Number/EmailId");
			return responseMap;
		}
		String uuid = UUID.randomUUID().toString();
		String[] newPasswords = uuid.split("-");
		customer.setAccountNumber(newPasswords[1] + newPasswords[2] + newPasswords[3]);
		Customer response = repository.save(customer);
		responseMap.put("meesage", "New Customer");
		responseMap.put("customerId", response.getCustomerId().toString());
		return responseMap;

	}

	@Transactional
	public String createUserPassword(ConfirmPassword confirmPassword) {

		Optional<Customer> response = repository.findById(Long.parseLong(confirmPassword.getCustomerId()));
		if (response.isPresent()) {
			Customer customer = response.get();
			customer.setPassword(confirmPassword.getPassword());
			repository.save(customer);
			return "User is Created Successfully";
		}

		repository.deleteById(Long.parseLong(confirmPassword.getCustomerId()));
		return "User Creation Failed Tryagain";
	}

	public Customer findCrustomerDetails(String customerId) {
		Optional<Customer> customer = repository.findById(Long.parseLong(customerId));
		if(customer.isPresent()) {
			return customer.get();
		}
		return null;
	}

	
	public Customer checkLoginUser(String userName, String password) {

		Customer response = repository.findByPasswordAndPhoneNumberOrEmail(password,userName,userName);
		
		return response;
	}

	public List<Transactions> getMiniStatement() {
		List<Transactions> transactions = Arrays.asList(
				new Transactions("1234567324","2023-06-22","IRCTC","Dr",500d, 9500d),
				new Transactions("1234567324","2023-06-22","IRCTC","Dr",500d, 9500d),
				new Transactions("1234567324","2023-06-22","IRCTC","Dr",500d, 9500d),
				new Transactions("1234567324","2023-06-22","IRCTC","Dr",500d, 9500d),
				new Transactions("1234567324","2023-06-22","IRCTC","Dr",500d, 9500d),
				new Transactions("1234567324","2023-06-22","IRCTC","Dr",500d, 9500d),
				new Transactions("1234567324","2023-06-22","IRCTC","Dr",500d, 9500d),
				new Transactions("1234567324","2023-06-22","IRCTC","Dr",500d, 9500d),
				new Transactions("1234567324","2023-06-22","IRCTC","Dr",500d, 9500d),
				new Transactions("1234567324","2023-06-22","IRCTC","Dr",500d, 9500d)
				);
		return transactions;
	}

	public List<Transactions> getOneMonthStatement() {
		List<Transactions> transactions = Arrays.asList(
				new Transactions("1234567324","2023-06-22","IRCTC","Dr",500d, 9500d),
				new Transactions("1234567324","2023-06-22","IRCTC","Dr",500d, 9500d),
				new Transactions("1234567324","2023-06-22","IRCTC","Dr",500d, 9500d),
				new Transactions("1234567324","2023-06-22","IRCTC","Dr",500d, 9500d),
				new Transactions("1234567324","2023-06-22","IRCTC","Dr",500d, 9500d),
				new Transactions("1234567324","2023-06-22","IRCTC","Dr",500d, 9500d),
				new Transactions("1234567324","2023-06-22","IRCTC","Dr",500d, 9500d),
				new Transactions("1234567324","2023-06-22","IRCTC","Dr",500d, 9500d),
				new Transactions("1234567324","2023-06-22","IRCTC","Dr",500d, 9500d),
				new Transactions("1234567324","2023-06-22","IRCTC","Dr",500d, 9500d)
				);
		return transactions;
	}

	public List<Transactions> get3MonthsStatement() {
		List<Transactions> transactions = Arrays.asList(
				new Transactions("1234567324","2023-06-22","IRCTC","Dr",500d, 9500d),
				new Transactions("1234567324","2023-06-22","IRCTC","Dr",500d, 9500d),
				new Transactions("1234567324","2023-06-22","IRCTC","Dr",500d, 9500d),
				new Transactions("1234567324","2023-06-22","IRCTC","Dr",500d, 9500d),
				new Transactions("1234567324","2023-06-22","IRCTC","Dr",500d, 9500d),
				new Transactions("1234567324","2023-06-22","IRCTC","Dr",500d, 9500d),
				new Transactions("1234567324","2023-06-22","IRCTC","Dr",500d, 9500d),
				new Transactions("1234567324","2023-06-22","IRCTC","Dr",500d, 9500d),
				new Transactions("1234567324","2023-06-22","IRCTC","Dr",500d, 9500d),
				new Transactions("1234567324","2023-06-22","IRCTC","Dr",500d, 9500d)
				);
		return transactions;
	}

	public List<Transactions> get1YearStatement() {
		List<Transactions> transactions = Arrays.asList(
				new Transactions("1234567324","2023-06-22","IRCTC","Dr",500d, 9500d),
				new Transactions("1234567324","2023-06-22","IRCTC","Dr",500d, 9500d),
				new Transactions("1234567324","2023-06-22","IRCTC","Dr",500d, 9500d),
				new Transactions("1234567324","2023-06-22","IRCTC","Dr",500d, 9500d),
				new Transactions("1234567324","2023-06-22","IRCTC","Dr",500d, 9500d),
				new Transactions("1234567324","2023-06-22","IRCTC","Dr",500d, 9500d),
				new Transactions("1234567324","2023-06-22","IRCTC","Dr",500d, 9500d),
				new Transactions("1234567324","2023-06-22","IRCTC","Dr",500d, 9500d),
				new Transactions("1234567324","2023-06-22","IRCTC","Dr",500d, 9500d),
				new Transactions("1234567324","2023-06-22","IRCTC","Dr",500d, 9500d)
				);
		return transactions;
	}

}
