package com.fdmgroup.springbootintro.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.fdmgroup.springbootintro.model.Donation;
import com.fdmgroup.springbootintro.repository.DonationRepository;

@Component
public class DonationServiceImpl implements DonationService {
	
	// The service is the location where we will write and test our logic
	// also in subclasses 
	
	@Autowired
	DonationRepository doRepo;
	
	// put all the logic in here
	
	@Override
	public List<Donation> findAllDonations() {
		
		List<Donation> donations = doRepo.findAll();
		
		return donations;
	}

	@Override
	public void createNewDonation(Donation donation) {
		
		doRepo.save(donation);
	}

	@Override
	public void deleteDonation(int id) {

		doRepo.deleteById(id);	
	}
	
	@Override
	public void updateDonation(int id, Donation donation) {
		
		doRepo.save(donation);
	}
	
	
}
