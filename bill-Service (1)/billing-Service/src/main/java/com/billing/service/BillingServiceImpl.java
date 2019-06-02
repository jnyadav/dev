package com.billing.service;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.Month;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
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
		

		 this.monthlyChargeRepo.save(monthlyCharge);

	}

	@Override
	public void generateBill(BillingPojo billingObj) {
		
		//Get the effective date as if last_bill_gentrn_date if not null else appt_registration date 
		LocalDate effectiveDate = null;
		if (billingObj.getLastBillGentrnDate() == null || billingObj.getLastBillGentrnDate().equals("")) {

			System.out.println("Last Bill Generation Date is blank!");

			effectiveDate = LocalDate.parse(billingObj.getApptRegistrationDate(), DateTimeFormatter.ofPattern("dd-MMM-yyyy"));
			System.out.println("registrationDate: " + effectiveDate);

		} else {

			effectiveDate = LocalDate.parse(billingObj.getLastBillGentrnDate(), DateTimeFormatter.ofPattern("dd-MMM-yyyy"));
			System.out.println("lastBillGenDate: " + effectiveDate);

			
		}
		
		//Get the latest value of monthly_charge.per_unit_charge
		
		List<MonthlyCharge> listOfMonthlyCharges = getAllMonthlyCharges();
		listOfMonthlyCharges.sort(
				(dt1, dt2) ->{
					
					LocalDate d1 = LocalDate.parse(dt1.getEffectiveDate(), DateTimeFormatter.ofPattern("dd-MMM-yyyy"));
					LocalDate d2 = LocalDate.parse(dt2.getEffectiveDate(), DateTimeFormatter.ofPattern("dd-MMM-yyyy"));
					return d2.compareTo(d1);
					
				}
				);
		System.out.println("listOfMonthlyCharges: "+listOfMonthlyCharges);
		Short chargePerUnit = listOfMonthlyCharges.get(0).getPerUnitCharge(); //need to fetch this as the latest value of Monthly_Charge.Per_Unit_Charge
		Double billAmount = (double) (chargePerUnit *  billingObj.getNoOfUnits());

		// loop till we reach the current month
		System.out.println("effectiveDate: "+effectiveDate);
		effectiveDate = effectiveDate.plusMonths(1);
		LocalDate currentDate = LocalDate.now();
		//currentDate = currentDate.plusMonths(1);
		System.out.println("currentDate: "+currentDate);
		while (effectiveDate.isBefore(currentDate)) {
			
			AppartmentBilling apptBilling = new AppartmentBilling();
			String monthYear = effectiveDate.format(DateTimeFormatter.ofPattern("MMM-YYYY"));
			apptBilling.setForMonth(monthYear);
			apptBilling.setBillAmount(billAmount);
			apptBilling.setApptId(billingObj.getApptId());

			LocalDate currDate = LocalDate.now();
			String billGenerationDate = currDate.format(DateTimeFormatter.ofPattern("dd-MMM-yyyy"));
			apptBilling.setBillGenerationDate(billGenerationDate);

			System.out.println("apptBilling: " + apptBilling);
			this.apptBillingRepo.save(apptBilling);
			effectiveDate = effectiveDate.plusMonths(1);
		}

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

	@Override
	public List<AppartmentBilling> getApptBills(Long apptId) {
		// TODO Auto-generated method stub
		return (List<AppartmentBilling>) this.apptBillingRepo.findByApptId(apptId);
	}

}
