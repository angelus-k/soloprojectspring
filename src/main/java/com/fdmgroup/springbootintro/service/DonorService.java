package com.fdmgroup.springbootintro.service;

import java.util.List;

import org.springframework.ui.ModelMap;

import com.fdmgroup.springbootintro.model.Donation;
import com.fdmgroup.springbootintro.model.Donor;

public interface DonorService {
	
	List<Donor> findAllDonors();

	void createNewDonor(Donor donor);

	void deleteDonor(int id);
	
	Donor findDonorByUsername(String username);

//	boolean validateInput(Donor donor);

	List<Donation> getAllDonations(Integer id);

	List<Donation> findDonationByDonor(Integer id);

	Donor findDonorById(Integer id);

	boolean validateInput(Donor donor, ModelMap model);
	
//	Donation getDonationById(Integer id);
}
