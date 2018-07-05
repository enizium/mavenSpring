
package com.itn.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="member_tbl")
public class Member implements Serializable {
    public static final long serialVersionUID=12312L;
     
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    @Column(name="member_id")
    private int id;
    private String name;
    private long phone;
    private String address;
    
	public Member() {
		super();
	}

	public Member(int id, String name, long phone, String address) {
		super();
		this.id = id;
		this.name = name;
		this.phone = phone;
		this.address = address;
	}

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

	public long getPhone() {
		return phone;
	}

	public void setPhone(long phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}
  
    
}
