package com.bean;

public class employeeBean 
{
	private int id;
	private String firstname;
	private String lastname;
	private String dob;
	private String phone;
	private String email;
	private String gender;
	private String status;
	private String address;
	private String title;
	private String department;
	public employeeBean(int id, String firstname, String lastname, String dob, String phone, String email,
			String gender, String status, String address, String title, String department)
	{
		this.id = id;
		this.firstname = firstname;
		this.lastname = lastname;
		this.dob = dob;
		this.phone = phone;
		this.email = email;
		this.gender = gender;
		this.status = status;
		this.address = address;
		this.title = title;
		this.department = department;
	}
	public employeeBean(String firstname, String lastname, String dob, String phone, String email,
			String gender, String status, String address, String title, String department)
	{
		this.id = id;
		this.firstname = firstname;
		this.lastname = lastname;
		this.dob = dob;
		this.phone = phone;
		this.email = email;
		this.gender = gender;
		this.status = status;
		this.address = address;
		this.title = title;
		this.department = department;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	
	
	
}
