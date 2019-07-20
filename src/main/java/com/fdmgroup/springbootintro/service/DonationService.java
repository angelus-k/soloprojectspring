package com.fdmgroup.springbootintro.service;

import java.util.List;

import com.fdmgroup.springbootintro.model.Donation;

public interface DonationService {
	
	List<Donation> findAllDonations();

	void createNewDonation(Donation donation);

	void deleteDonation(int id);

	void updateDonation(int id, Donation donation);
}
