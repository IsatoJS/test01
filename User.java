package model;

import java.io.Serializable;

public class User implements Serializable {
	private String user_id;
	private String user_name;
	private String password;

	public User() {}
	public User(String user_id, String password) {
		this.user_id = user_id;
		this.password = password;
	}

	public String getUser_name() {
		return this.user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_id() {
		return this.user_id;
	}
	public String getPassword() {
		return this.password;
	}

}
