package com.jbk.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class TicketData {
	
	private int ticketId;
	private String name;
	private String email;
	private String batch;
	private String subject;
	private String msg;
	
	@Id
	@GeneratedValue
	public int getTicketId() {
		return ticketId;
	}
	public void setTicketId(int ticketId) {
		this.ticketId = ticketId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getBatch() {
		return batch;
	}
	public void setBatch(String batch) {
		this.batch = batch;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	@Override
	public String toString() {
		return "TicketData [ticketId=" + ticketId + ", name=" + name + ", email=" + email + ", batch=" + batch
				+ ", subject=" + subject + ", msg=" + msg + "]";
	}
	
	
}