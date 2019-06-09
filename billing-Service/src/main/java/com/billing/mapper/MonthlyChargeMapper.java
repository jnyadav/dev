package com.billing.mapper;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import com.billing.entity.MonthlyCharge;
import com.billing.model.MonthlyChargePojo;

public class MonthlyChargeMapper {

	public static MonthlyCharge MonthlyChargePojoToMonthlyChargeEntity(MonthlyChargePojo monthlyChargePojo) {

		MonthlyCharge monthlyCharge = new MonthlyCharge();
		Short perUnitCharge = monthlyChargePojo.getPerUnitCharge();
		String effectiveDate = monthlyChargePojo.getEffectiveDate();
		monthlyCharge.setPerUnitCharge(perUnitCharge);
		monthlyCharge.setEffectiveDate(LocalDate.parse(effectiveDate, DateTimeFormatter.ofPattern("dd-MMM-yyyy")));

		return monthlyCharge;

	}

	public static MonthlyChargePojo MonthlyChargeEntityToMonthlyChargePojo(MonthlyCharge monthlyCharge) {

		MonthlyChargePojo monthlyChargePojo = new MonthlyChargePojo();
		Short perUnitCharge = monthlyCharge.getPerUnitCharge();
		LocalDate effectiveDate = monthlyCharge.getEffectiveDate();
		monthlyChargePojo.setPerUnitCharge(perUnitCharge);
		monthlyChargePojo.setEffectiveDate(effectiveDate.format(DateTimeFormatter.ofPattern("dd-MMM-yyyy")));

		return monthlyChargePojo;

	}

}
