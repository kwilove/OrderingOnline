package com.hzj.entity;

public class User {

	private String user_id;

	private String username;

	private String password;

	private Integer phone;

	private String address;

	private Integer type;

	private static final long serialVersionUID = 1L;

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public User(String user_id, String username, String password, Integer phone, String address, Integer type) {
		super();
		this.user_id = user_id;
		this.username = username;
		this.password = password;
		this.phone = phone;
		this.address = address;
		this.type = type;
	}

	@Override
	public String toString() {
		return "User [user_id=" + user_id + ", username=" + username + ", password=" + password + ", phone=" + phone + ", address=" + address + ", type=" + type + "]";
	}

}