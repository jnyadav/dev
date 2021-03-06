package com.notice.entity;


import java.util.Arrays;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import com.notice.util.NoticeConstant;



@Entity
@Table(name= "sendNotice")
public class NoticeModelEntity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = NoticeConstant.NOTICE_ID)
	@NotNull(message="NoticeId must not be blank!")
	private String noticeId;
	
	@NotNull(message="ApartementId must not be blank!")
	@Column(name= NoticeConstant.APT_ID)
	private String apartementId;
	
	@Column(name= NoticeConstant.USER_ID)
	private String unitId;
	
	@Column(name= NoticeConstant.POST_BY_USER_ID)
	private String postByUserId;
	
	@Lob
	@Column(name= "attachement", length=100000)
	private byte[] attachement;
	
	@Column(name= NoticeConstant.VISIBILITY)
	private String visibility;
	
	@Column(name= NoticeConstant.START_DATE)
	//DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
	private Date noticeStartDate;
   
	
	@Column(name= NoticeConstant.EXP_DATE)
	private Date NoticeExpDate;
	
    
	@Column(name= NoticeConstant.TEXT)
	private String noticeText;
	
	public NoticeModelEntity(){
		
	}

	public NoticeModelEntity(String noticeId, String apartementId, String unitId, String postByUserId,
			byte[] attachement, String visibility,  Date noticeStartDate,
			Date noticeExpDate, String noticeText) {
		super();
		this.noticeId = noticeId;
		this.apartementId = apartementId;
		this.unitId = unitId;
		this.postByUserId = postByUserId;
		this.attachement = attachement;
		this.visibility = visibility;
		this.noticeStartDate = noticeStartDate;
		NoticeExpDate = noticeExpDate;
		this.noticeText = noticeText;
	}

	public String getNoticeId() {
		return noticeId;
	}

	public void setNoticeId(String noticeId) {
		this.noticeId = noticeId;
	}

	public String getApartementId() {
		return apartementId;
	}

	public void setApartementId(String apartementId) {
		this.apartementId = apartementId;
	}

	public String getUnitId() {
		return unitId;
	}

	public void setUnitId(String unitId) {
		this.unitId = unitId;
	}

	public String getPostByUserId() {
		return postByUserId;
	}

	public void setPostByUserId(String postByUserId) {
		this.postByUserId = postByUserId;
	}

	public byte[] getAttachement() {
		return attachement;
	}

	public void setAttachement(byte[] attachement) {
		this.attachement = attachement;
	}

	public String getVisibility() {
		return visibility;
	}

	public void setVisibility(String visibility) {
		this.visibility = visibility;
	}
/*
	public DateTimeFormatter getDtf() {
		return dtf;
	}

	public void setDtf(DateTimeFormatter dtf) {
		this.dtf = dtf;
	}*/

	public Date getNoticeStartDate() {
		return noticeStartDate;
	}

	public void setNoticeStartDate(Date noticeStartDate) {
		this.noticeStartDate = noticeStartDate;
	}

	public Date getNoticeExpDate() {
		return NoticeExpDate;
	}

	public void setNoticeExpDate(Date noticeExpDate) {
		NoticeExpDate = noticeExpDate;
	}

	public String getNoticeText() {
		return noticeText;
	}

	public void setNoticeText(String noticeText) {
		this.noticeText = noticeText;
	}

	@Override
	public String toString() {
		return "NoticeModelEntity [noticeId=" + noticeId + ", apartementId=" + apartementId + ", unitId=" + unitId
				+ ", postByUserId=" + postByUserId + ", attachement=" + Arrays.toString(attachement) + ", visibility="
				+ visibility + ",noticeStartDate=" + noticeStartDate + ", NoticeExpDate="
				+ NoticeExpDate + ", noticeText=" + noticeText + "]";
	}

	
	

	
}
