package com.hb.db;

public class PR_VO {
	private String reservation_num,member_id,reservation_date,reservation_package,package_su;
	public PR_VO() {
		// TODO Auto-generated constructor stub
	}
	public PR_VO(String reservation_num, String member_id, String reservation_date, String reservation_package,
			String package_su) {
		super();
		this.reservation_num = reservation_num;
		this.member_id = member_id;
		this.reservation_date = reservation_date;
		this.reservation_package = reservation_package;
		this.package_su = package_su;
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
	public String getReservation_package() {
		return reservation_package;
	}
	public void setReservation_package(String reservation_package) {
		this.reservation_package = reservation_package;
	}
	public String getPackage_su() {
		return package_su;
	}
	public void setPackage_su(String package_su) {
		this.package_su = package_su;
	}
	
	
}
