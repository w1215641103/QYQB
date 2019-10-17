package com.qyqb.model;

public class Boy {

	private int id;
	private String BoyName;
	private String BoyDesc;
	private String BoyPirce;
	
	public Boy() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Boy(String boyName, String boyDesc, String boyPirce) {
		super();
		BoyName = boyName;
		BoyDesc = boyDesc;
		BoyPirce = boyPirce;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getBoyName() {
		return BoyName;
	}
	public void setBoyName(String boyName) {
		BoyName = boyName;
	}
	public String getBoyDesc() {
		return BoyDesc;
	}
	public void setBoyDesc(String boyDesc) {
		BoyDesc = boyDesc;
	}
	public String getBoyPirce() {
		return BoyPirce;
	}
	public void setBoyPirce(String boyPirce) {
		BoyPirce = boyPirce;
	}
	

}
