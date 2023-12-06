package com.jbk.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class BuyerDetails {

	private int buyerId;
	private String buyerName;
	private String buyerEmail;
	private String buyerPhone;
	private String courseName;
	private String coursePrice;
	
	@Id
	@GeneratedValue
	public int getBuyerId() {
		return buyerId;
	}
	public void setBuyerId(int buyerId) {
		this.buyerId = buyerId;
	}
	public String getBuyerName() {
		return buyerName;
	}
	public void setBuyerName(String buyerName) {
		this.buyerName = buyerName;
	}
	public String getBuyerEmail() {
		return buyerEmail;
	}
	public void setBuyerEmail(String buyerEmail) {
		this.buyerEmail = buyerEmail;
	}
	
	public String getBuyerPhone() {
		return buyerPhone;
	}
	public void setBuyerPhone(String buyerPhone) {
		this.buyerPhone = buyerPhone;
	}
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	public String getCoursePrice() {
		return coursePrice;
	}
	public void setCoursePrice(String coursePrice) {
		this.coursePrice = coursePrice;
	}
	@Override
	public String toString() {
		return "BuyerDetails [buyerId=" + buyerId + ", buyerName=" + buyerName + ", buyerEmail=" + buyerEmail
				+ ", courseName=" + courseName + ", coursePrice=" + coursePrice + "]";
	}
	
	
}
