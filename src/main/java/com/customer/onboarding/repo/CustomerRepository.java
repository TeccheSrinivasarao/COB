package com.customer.onboarding.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.customer.onboarding.dao.Customer;

@Repository
public interface CustomerRepository extends JpaRepository<Customer, Long>{
	
	
	Customer findByEmailOrPhoneNumber(String email, String phoneNumber);

	Customer findByPasswordAndPhoneNumberOrEmail(String password, String userName, String userName2);

}
