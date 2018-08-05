package com.itn.model;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="user_role")
public class UserRole implements Serializable {
    public static final long serialVersionUID=12312456;
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int id;
    private String authority;
	public UserRole() {
		super();
	}
	public UserRole(int id, int uid, String authority) {
		super();
		this.id = id;
//		this.uid = uid;
		this.authority = authority;
	}
	public UserRole(int uid, String authority) {
		super();
//		this.uid = uid;
		this.authority = authority;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	/*public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}*/
	public String getAuthority() {
		return authority;
	}
	public void setAuthority(String authority) {
		this.authority = authority;
	}
    
}
