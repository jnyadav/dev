package com.billing.model;

import java.time.LocalDate;

public class MonthlyChargePojo {
	
	private Short perUnitCharge;
	private String effectiveDate;
	
	public Short getPerUnitCharge() {
		return perUnitCharge;
	}
	
	public void setPerUnitCharge(Short perUnitCharge) {
		this.perUnitCharge = perUnitCharge;
	}
	public String getEffectiveDate() {
		return effectiveDate;
	}
	public void setEffectiveDate(String effectiveDate) {
		this.effectiveDate = effectiveDate;
	}

	@Override
	public String toString() {
		return "MonthlyChargePojo [perUnitCharge=" + perUnitCharge + ", effectiveDate=" + effectiveDate + "]";
	}
	
	
	
	

}
