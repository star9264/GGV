package com.hb.db;

public class P_VO { 
	private String package_idx,package_name,package_price,package_img,package_item,package_su,package_maxsu;
	public P_VO() {
		// TODO Auto-generated constructor stub
	}
	public P_VO(String package_idx, String package_name, String package_price, String package_img, String package_item,
			String package_su, String package_maxsu) {
		super();
		this.package_idx = package_idx;
		this.package_name = package_name;
		this.package_price = package_price;
		this.package_img = package_img;
		this.package_item = package_item;
		this.package_su = package_su;
		this.package_maxsu = package_maxsu;
	}
	public String getPackage_idx() {
		return package_idx;
	}
	public void setPackage_idx(String package_idx) {
		this.package_idx = package_idx;
	}
	public String getPackage_name() {
		return package_name;
	}
	public void setPackage_name(String package_name) {
		this.package_name = package_name;
	}
	public String getPackage_price() {
		return package_price;
	}
	public void setPackage_price(String package_price) {
		this.package_price = package_price;
	}
	public String getPackage_img() {
		return package_img;
	}
	public void setPackage_img(String package_img) {
		this.package_img = package_img;
	}
	public String getPackage_item() {
		return package_item;
	}
	public void setPackage_item(String package_item) {
		this.package_item = package_item;
	}
	public String getPackage_su() {
		return package_su;
	}
	public void setPackage_su(String package_su) {
		this.package_su = package_su;
	}
	public String getPackage_maxsu() {
		return package_maxsu;
	}
	public void setPackage_maxsu(String package_maxsu) {
		this.package_maxsu = package_maxsu;
	}
	
	
}
