package com.tian.entity;

public class Users {

	private int id;
	private String name;
	private String loginname;
	private String password;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLoginname() {
		return loginname;
	}
	public void setLoginname(String loginname) {
		this.loginname = loginname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Users(int id, String name, String loginname, String password) {
		super();
		this.id = id;
		this.name = name;
		this.loginname = loginname;
		this.password = password;
	}
	public Users() {
		super();
	}
	
	
	
	
}
