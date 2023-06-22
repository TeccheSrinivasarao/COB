package com.customer.onboarding.dao;

import lombok.Data;

@Data
public class ConfirmPassword {

	private String customerId;

	private String password;

	private String confirmPassword;
}
