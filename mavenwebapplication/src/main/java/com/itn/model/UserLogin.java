package com.itn.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="user_login")
public class UserLogin implements Serializable {
	private static final long serialVesionUID=123409874;
	
	 	@Id
	    @GeneratedValue(strategy=GenerationType.AUTO)
	    private int id;
	 	private String username;
	 	private String password;
	 	private String active;
		public UserLogin() {
			super();
		}
		public UserLogin(int id, String username, String password, String active) {
			super();
			this.id = id;
			this.username = username;
			this.password = password;
			this.active=active;
		}
		
		public UserLogin(String username, String password, String active) {
			super();
			this.username = username;
			this.password = password;
			this.active=active;
		}
		public String getActive() {
			return active;
		}
		public void setActive(String active) {
			this.active = active;
		}
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getUsername() {
			return username;
		}
		public void setUsername(String username) {
			this.username = username;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
	

}
