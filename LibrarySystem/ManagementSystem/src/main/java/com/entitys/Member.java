package com.entitys;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Member {
	
	@Id
	private String id;
	private String name;
	private String department;
	private String address;
	private String email;
	private String contact;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public Member(String id, String name, String department, String address, String email, String contact) {
		super();
		this.id = id;
		this.name = name;
		this.department = department;
		this.address = address;
		this.email = email;
		this.contact = contact;
	}
	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
