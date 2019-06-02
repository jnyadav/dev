package com.billing.model;

import java.util.Date;


import com.fasterxml.jackson.annotation.JsonFormat;

public class BillingPojo {
	
	private Long apptId;
	
	private Long noOfUnits;
	
	private String lastBillGentrnDate;
	
	private String apptRegistrationDate;
	
	public BillingPojo() {
		
	}

	public BillingPojo(Long apptId, Long noOfUnits, String lastBillGentrnDate, String apptRegistrationDate) {
		super();
		this.apptId = apptId;
		this.noOfUnits = noOfUnits;
		this.lastBillGentrnDate = lastBillGentrnDate;
		this.apptRegistrationDate = apptRegistrationDate;
	}

	public Long getApptId() {
		return apptId;
	}

	public void setApptId(Long apptId) {
		this.apptId = apptId;
	}

	public Long getNoOfUnits() {
		return noOfUnits;
	}

	public void setNoOfUnits(Long noOfUnits) {
		this.noOfUnits = noOfUnits;
	}

	public String getLastBillGentrnDate() {
		return lastBillGentrnDate;
	}

	public void setLastBillGentrnDate(String lastBillGentrnDate) {
		this.lastBillGentrnDate = lastBillGentrnDate;
	}

	public String getApptRegistrationDate() {
		return apptRegistrationDate;
	}

	public void setApptRegistrationDate(String apptRegistrationDate) {
		this.apptRegistrationDate = apptRegistrationDate;
	}

	@Override
	public String toString() {
		return "BillingPojo [apptId=" + apptId + ", noOfUnits=" + noOfUnits + ", lastBillGentrnDate="
				+ lastBillGentrnDate + ", apptRegistrationDate=" + apptRegistrationDate + "]";
	}
	
	

}
