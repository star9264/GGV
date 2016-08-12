package com.hb.db;

public class Member_VO {
	private String member_id, pwd, name, addr, phone, birthday, gender, email_addr, point, grade,package_reservation;
	
	public Member_VO() {
		// TODO Auto-generated constructor stub
	}

	public Member_VO(String member_id, String pwd, String name, String addr, String phone, String birthday,
			String gender, String email_addr, String point, String grade, String package_reservation) {
		super();
		this.member_id = member_id;
		this.pwd = pwd;
		this.name = name;
		this.addr = addr;
		this.phone = phone;
		this.birthday = birthday;
		this.gender = gender;
		this.email_addr = email_addr;
		this.point = point;
		this.grade = grade;
		this.package_reservation = package_reservation;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEmail_addr() {
		return email_addr;
	}

	public void setEmail_addr(String email_addr) {
		this.email_addr = email_addr;
	}

	public String getPoint() {
		return point;
	}

	public void setPoint(String point) {
		this.point = point;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getPackage_reservation() {
		return package_reservation;
	}

	public void setPackage_reservation(String package_reservation) {
		this.package_reservation = package_reservation;
	}
	
	
	
}
