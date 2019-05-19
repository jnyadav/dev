package com.billing.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.billing.entity.AppartmentBilling;
import com.billing.entity.MonthlyCharge;
import com.billing.model.BillingPojo;
import com.billing.service.BillingService;

@RestController
@RequestMapping("/billing")
public class BillingController {
	
	
	@Autowired
	private BillingService billingService;
	
	
	@GetMapping("/generate")
	public String generateBill(@RequestBody BillingPojo billingPojo) {
		
		System.out.println(billingPojo);
		this.billingService.generateBill(billingPojo);
		
		return "bill is generated successfully!";
	}
	
	@PostMapping("add-monthly-charge")
	
	public void addMonthlyCharge(@RequestBody MonthlyCharge monthlyCharge) {
		
		this.billingService.addMonthlyCharge(monthlyCharge);
	}
	
	@GetMapping("get-monthly-charges")
	public List<MonthlyCharge> getAllMonthlyCharges(){
		return this.billingService.getAllMonthlyCharges();
	}
	
	@GetMapping("get-appt-bills")
	public List<AppartmentBilling> getApptBills(){
		return this.billingService.getApptBills();
	}

}
