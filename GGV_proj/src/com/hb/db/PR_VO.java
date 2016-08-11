package com.hb.db;

public class PR_VO {
	private String reservation_num,member_id,reservation_date,reservation_due,reservation_package;
	public PR_VO() {
		// TODO Auto-generated constructor stub
	}
	public PR_VO(String reservation_num, String member_id, String reservation_date, String reservation_due,
			String reservation_package) {
		super();
		this.reservation_num = reservation_num;
		this.member_id = member_id;
		this.reservation_date = reservation_date;
		this.reservation_due = reservation_due;
		this.reservation_package = reservation_package;
	}
	public String getReservation_num() {
		return reservation_num;
	}
	public void setReservation_num(String reservation_num) {
		this.reservation_num = reservation_num;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getReservation_date() {
		return reservation_date;
	}
	public void setReservation_date(String reservation_date) {
		this.reservation_date = reservation_date;
	}
	public String getReservation_due() {
		return reservation_due;
	}
	public void setReservation_due(String reservation_due) {
		this.reservation_due = reservation_due;
	}
	public String getReservation_package() {
		return reservation_package;
	}
	public void setReservation_package(String reservation_package) {
		this.reservation_package = reservation_package;
	}
	
	
}
