package com.customer.onboarding.dao;

import java.sql.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;

@Entity
@Data
public class Customer {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	private Long customerId;

	private String salutation;

	private String firstName;

	private String lastName;

	private Date dob;

	private String gender;

	private String email;

	private String phoneNumber;

	private String addressLine1;

	private String addressLine2;

	private String city;

	private String state;

	private String country;

	private Integer zipCode;

	private String password;

	private String accountNumber;

}
