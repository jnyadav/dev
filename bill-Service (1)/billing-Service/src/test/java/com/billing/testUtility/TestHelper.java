package com.billing.testUtility;

import java.util.ArrayList;
import java.util.List;

import com.billing.entity.AppartmentBilling;
import com.billing.entity.MonthlyCharge;
import com.billing.model.BillingPojo;

public class TestHelper {

	public static MonthlyCharge getBeanObj(){
		MonthlyCharge monthlyCharge=new MonthlyCharge(1L,(short) 10,"01-Jan-2019");
		return monthlyCharge;
		
	}
	
	public static List<MonthlyCharge> getAllMonthlyCharge(){
		List<MonthlyCharge> list=new ArrayList<>();
		MonthlyCharge monthlyCharge=new MonthlyCharge(1L,(short) 10,"02-Feb-2019");
		list.add(monthlyCharge);
		return list;
	}
	
	public static AppartmentBilling getAppBilling(){
		AppartmentBilling appartmentBilling = new AppartmentBilling(1L,1L,"Feb-2019",10.00,"02-Feb-2018");
		return appartmentBilling;
	}

	public static BillingPojo getAppBilling1(){
		BillingPojo billingPojo = new BillingPojo(1L,10L,"02-Feb-2019","02-Feb-2018");
		return billingPojo;
	}
}
