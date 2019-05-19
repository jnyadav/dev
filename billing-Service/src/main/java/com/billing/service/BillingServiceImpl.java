package com.billing.service;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.billing.entity.AppartmentBilling;
import com.billing.entity.MonthlyCharge;
import com.billing.model.BillingPojo;
import com.billing.repository.AppartmentBillingRepository;
import com.billing.repository.MonthlyChargeRepository;

@Service
public class BillingServiceImpl implements BillingService {

	private final String[] monthNames = { "January", "February", "March", "April", "May", "June", "July", "August",
			"September", "October", "November", "December" };

	@Autowired
	private MonthlyChargeRepository monthlyChargeRepo;
	
	@Autowired
	private AppartmentBillingRepository apptBillingRepo;

	@Override
	public void addMonthlyCharge(MonthlyCharge monthlyCharge) {
		// TODO Auto-generated method stub

		this.monthlyChargeRepo.save(monthlyCharge);

	}

	@Override
	public void generateBill(BillingPojo billingObj) {
		// TODO Auto-generated method stub
		String format = "dd-MMM-yyyy";
		DateFormat df = new SimpleDateFormat(format);
		int month = -1;

		if (billingObj.getLastBillGentrnDate() == null || billingObj.getLastBillGentrnDate().equals("")) {

			System.out.println("Last Bill Generation Date is blank!");
			Date registrationDate = null;
			try {
				registrationDate = df.parse(billingObj.getApptRegistrationDate());
				month = registrationDate.getMonth();
				System.out.println("registrationDate month=> " + this.monthNames[month]);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}else {
			
			Date lastBillGenDate = null;
			try {
				lastBillGenDate = df.parse(billingObj.getLastBillGentrnDate());
				month = lastBillGenDate.getMonth();
				System.out.println("lastBillGenDate month=> " + this.monthNames[month]);
				//to get the next month
				month = month + 1;
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
		AppartmentBilling apptBilling = new AppartmentBilling();
		apptBilling.setForMonth(this.monthNames[month]);
		
		for (MonthlyCharge monthlyCharge : getAllMonthlyCharges()) {
			
			

			System.out.println("effective_date: " + monthlyCharge.getEffectiveDate() + ", per_unit_charge:"
					+ monthlyCharge.getPerUnitCharge());
			
			try {
				int tempMonth = df.parse(monthlyCharge.getEffectiveDate()).getMonth();
				System.out.println("tempMonth: "+tempMonth);
				
				if(tempMonth == month) {
					
					Double billAmount = (double) (monthlyCharge.getPerUnitCharge() * billingObj.getNoOfUnits());
					apptBilling.setBillAmount(billAmount);
					break;
					
				}
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			
		}
		
		apptBilling.setApptId(billingObj.getApptId());
		
		Date currDate = new Date();
		String billGenerationDate = df.format(currDate);
		apptBilling.setBillGenerationData(billGenerationDate);
		
		System.out.println("apptBilling: "+apptBilling);
		this.apptBillingRepo.save(apptBilling);

	}

	@Override
	public List<MonthlyCharge> getAllMonthlyCharges() {
		// TODO Auto-generated method stub
		List<MonthlyCharge> monthlyCharges = (List<MonthlyCharge>) this.monthlyChargeRepo.findAll();

//		while(itr.hasNext()) {
//			System.out.println(itr.next());
//		}
		return monthlyCharges;

	}

	@Override
	public List<AppartmentBilling> getApptBills() {
		// TODO Auto-generated method stub
		return (List<AppartmentBilling>) this.apptBillingRepo.findAll();
	}

}
