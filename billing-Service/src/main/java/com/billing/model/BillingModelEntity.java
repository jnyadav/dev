package com.billing.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="billingModel")
public class BillingModelEntity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "Apt_Id")
	private String aptId;
	
	@Column(name = "per_Unit_Charge")
	private String perUnitCharge;
	
	@Column(name = "effective_Date")
	private Date effectiveDate;

}
