package com.fdmgroup.springbootintro.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="donation")
public class Donation {

	@Id
	@Column(name="donation_id")
	@GeneratedValue	
	private Integer id;
	
	@ManyToOne
	@JoinColumn(name="fk_donor_id")
	private Donor donor;
		
	private Double amount;
	
	private String date;
	
	private String project;
	
	public Donation() {
		super();
	}

	public Donation(int id, Double amount, String date, String project) {
		super();
		this.id = id;
		this.amount = amount;
		this.project = project;
		this.date = date;
	}
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Double getAmount() {
		return amount;
	}

	public void setAmount(Double amount) {
		this.amount = amount;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getProject() {
		return project;
	}

	public void setProject(String project) {
		this.project = project;
	}

	public Donor getDonor() {
		return donor;
	}

	public void setDonor(Donor donor) {
		this.donor = donor;
	}

}
