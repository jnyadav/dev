package com.billing.entity;



import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name="monthly_charge")
public class MonthlyCharge {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	@JsonIgnore
	private Long id;
	
	@Column(name = "per_Unit_Charge")
	private Short perUnitCharge;
	
	@Column(name = "effective_Date")
	private LocalDate effectiveDate;
	
	public MonthlyCharge() {
		
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Short getPerUnitCharge() {
		return perUnitCharge;
	}

	public void setPerUnitCharge(Short perUnitCharge) {
		this.perUnitCharge = perUnitCharge;
	}

	public LocalDate getEffectiveDate() {
		return effectiveDate;
	}

	public void setEffectiveDate(LocalDate effectiveDate) {
		this.effectiveDate = effectiveDate;
	}

	@Override
	public String toString() {
		return "MonthlyCharge [perUnitCharge=" + perUnitCharge + ", effectiveDate=" + effectiveDate + "]";
	}
	
	

}
