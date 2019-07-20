package com.fdmgroup.springbootintro.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="project")
public class Project {

	@Id
	@Column(name="project_id")
	@GeneratedValue	
	private Integer id;
	
	private String projectName;
	
	private String description;
	
	private Double amount;
	
	@Column(name="date")
	private String targetDate;
	
	@Column(name="target")
	private Double targetAmount;
	
	public Project() {
		super();
	}

	public Project(String projectName, String description, Double amount, String targetDate, Double targetAmount) {
		super();
		this.projectName = projectName;
		this.description = description;
		this.amount = amount;
		this.targetDate = targetDate;
		this.targetAmount = targetAmount;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getProjectName() {
		return projectName;
	}

	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Double getAmount() {
		return amount;
	}

	public void setAmount(Double amount) {
		this.amount = amount;
	}

	public String getTargetDate() {
		return targetDate;
	}

	public void setTargetDate(String targetDate) {
		this.targetDate = targetDate;
	}

	public Double getTargetAmount() {
		return targetAmount;
	}

	public void setTargetAmount(Double targetAmount) {
		this.targetAmount = targetAmount;
	}

	
	
}
