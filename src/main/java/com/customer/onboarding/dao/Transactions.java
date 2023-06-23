package com.customer.onboarding.dao;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class Transactions {

	private String transactionId;
	private String transactionDate;
	private String reference;
	private String transactionType;
	private Double amount;
	private Double balanceAmount;

}
