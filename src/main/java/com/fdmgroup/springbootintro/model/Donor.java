package com.fdmgroup.springbootintro.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import org.hibernate.annotations.Generated;

@Entity
@Table(name="donors")
public class Donor {

	@Id
	@Column(name="donor_id")
	@GeneratedValue	
	private Integer id;
	
//	@NotBlank(message="Please enter a username")
	private String username;
	
//	@NotBlank(message="Please enter a password")
	private String password;
	
//	@NotBlank(message="Please enter your email")
	private String email;
	
	private String firstName;
	
	private String lastName;
	
	@OneToMany(mappedBy = "donor", cascade = CascadeType.ALL)
	
	private List<Donation> donations = new ArrayList<Donation>();
	
//	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
//	@JoinColumn(name = "fk_donation_id")
//	private List<Donation> donations;

	Donation donate() {
		
		Donation donation = new Donation();
		
		return donation;
	}
	
	public List<Donation> getDonations() {
		return donations;
	}

	public void setDonations(List<Donation> donations) {
		this.donations = donations;
	}

	public Donor() {
		super();
	}

	public Donor(String username, String password, String email) {
		super(); 
		this.username = username;
		this.password = password;
		this.email = email;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
}
