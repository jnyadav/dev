package com.billing.service;

import java.util.List;

import com.billing.entity.AppartmentBilling;
import com.billing.entity.MonthlyCharge;
import com.billing.model.BillingPojo;

public interface BillingService {
	
	public MonthlyCharge addMonthlyCharge(MonthlyCharge monthlyCharge);
	public List<AppartmentBilling> generateBill(BillingPojo billingObj);
	
	public List<MonthlyCharge> getAllMonthlyCharges();
	public List<AppartmentBilling> getApptBills();
	public List<AppartmentBilling> getApptBills(Long apptId);

}
