package com.billing.entity;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="appt_billing")
public class AppartmentBilling {
	
	

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private Long id;
	
	@Column(name="appt_id")
	private Long apptId;
	
	@Column(name="for_month")
	private String forMonth;
	
	@Column(name="bill_amount")
	private Double billAmount;
	
	@Column(name="bill_generation_date")
	private String billGenerationDate;
	
	public AppartmentBilling() {
		
	}
	public AppartmentBilling(Long id, Long apptId, String forMonth, Double billAmount, String billGenerationDate) {
		super();
		this.id = id;
		this.apptId = apptId;
		this.forMonth = forMonth;
		this.billAmount = billAmount;
		this.billGenerationDate = billGenerationDate;
	}

	public Long getApptId() {
		return apptId;
	}

	public void setApptId(Long apptId) {
		this.apptId = apptId;
	}

	public String getForMonth() {
		return forMonth;
	}

	public void setForMonth(String forMonth) {
		this.forMonth = forMonth;
	}

	public Double getBillAmount() {
		return billAmount;
	}

	public void setBillAmount(Double billAmount) {
		this.billAmount = billAmount;
	}

	public String getBillGenerationData() {
		return billGenerationDate;
	}

	public void setBillGenerationDate(String billGenerationDate) {
		this.billGenerationDate = billGenerationDate;
	}

	@Override
	public String toString() {
		
		return "AppartmentBilling [apptId=" + apptId + ", forMonth=" + forMonth + ", billAmount=" + billAmount
				+ ", billGenerationDate=" + billGenerationDate + "]";
	}
	
	

}
