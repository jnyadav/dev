package com.billing.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.billing.entity.AppartmentBilling;
import com.billing.entity.MonthlyCharge;
import com.billing.mapper.MonthlyChargeMapper;
import com.billing.model.BillingPojo;
import com.billing.model.MonthlyChargePojo;
import com.billing.service.BillingService;

@RestController
@RequestMapping("/billing")
public class BillingController {
	
	
	@Autowired
	private BillingService billingService;
	
	
	@PostMapping("/generate")
	public List<AppartmentBilling> generateBill(@RequestBody BillingPojo billingPojo) {
		
		System.out.println(billingPojo);
		return this.billingService.generateBill(billingPojo);
		
	}
	
	@PostMapping("add-monthly-charge")
	
	public MonthlyCharge addMonthlyCharge(@RequestBody MonthlyChargePojo monthlyChargePojo) {
		
		MonthlyCharge monthlyCharge = MonthlyChargeMapper.MonthlyChargePojoToMonthlyChargeEntity(monthlyChargePojo);
		
		return this.billingService.addMonthlyCharge(monthlyCharge);
	}
	
	@GetMapping("get-monthly-charges")
	public List<MonthlyChargePojo> getAllMonthlyCharges(){
		List<MonthlyCharge> monthlyChargeList = this.billingService.getAllMonthlyCharges();
		List<MonthlyChargePojo> monthlyChargePojoList = new ArrayList<>();
		for(MonthlyCharge monthlyCharge: monthlyChargeList) {
			monthlyChargePojoList.add(MonthlyChargeMapper.MonthlyChargeEntityToMonthlyChargePojo(monthlyCharge));
		}
		return monthlyChargePojoList;
	}
	
	@GetMapping("get-appt-bills")
	public List<AppartmentBilling> getApptBills(){
		return this.billingService.getApptBills();
	}
	
	@GetMapping("get-appt-bills/{apptId}")
	
	public List<AppartmentBilling> getApptBills(@PathVariable("apptId") Long apptId){
		return this.billingService.getApptBills(apptId);
	}

}
