package com.fdmgroup.springbootintro.service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.fdmgroup.springbootintro.model.Donation;
import com.fdmgroup.springbootintro.model.Donor;
import com.fdmgroup.springbootintro.repository.DonorRepository;

import javassist.compiler.ast.Variable;

@Component
public class DonorServiceImpl implements DonorService {
	
	
	@Autowired
	DonorRepository repo;
	
	@Autowired
	PasswordEncoder encoder;
	
	@Override
	public List<Donor> findAllDonors() {
		
		List<Donor> donors = repo.findAll();
			
		return donors;
	}
	
	// create method validateInput that is called in createNewDonor
	@Override
	public boolean validateInput(Donor donor, ModelMap model) {
		
		boolean result = false;
		List<Donor> donors = repo.findAll();
		
		// is the username already in the database?
		String test1 = donor.getUsername();
		// is the email already in the database?
		String test2 = donor.getEmail();
		
		 for (Donor obj : donors) {
		        
					if(obj.getUsername().equals(test1)) {
					   	String userError = "Username already registered";

					   	result = false;
					   	break;
					}   	
					else if(obj.getEmail().equals(test2)) {
						String emailError = "Email already registered";

						result = false;
						break;
					}
					else {
						result = true;
					 	System.out.println("Donor saved");
					}
		 }			
		System.out.println(result);		 
		return result;
		 
	}
	
	// creates the new Donor object
	@Override
	public void createNewDonor(Donor donor) {
		
		if (validateInput(donor, null)) {
			
			String password = donor.getPassword();
			
			donor.setPassword(encoder.encode(password));			
			
			repo.save(donor);
   	     	System.out.println("Donor saved");
		} else {
		System.out.println("createNewDonor called, but no donor created");
		}
	}

	@Override
	public void deleteDonor(int id) {

		repo.deleteById(id);
		
	}

	@Override
	public Donor findDonorByUsername(String username) {

		return null;
	}

	@Override
	public List<Donation> findDonationByDonor(Integer donor_id) {
		
		// TODO Auto-generated method stub
		List<Donor> donors = repo.findAll();
		List<Donation> donations = null;

		// find donor with matching id
		for(Donor donor : donors) { 
			   if(donor.getId().equals(donor_id)) { 
				   donations = donor.getDonations();
			   }
			}
		return donations;
	}

	@Override
	public List<Donation> getAllDonations(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Donor findDonorById(Integer id) {
		// TODO Auto-generated method stub
		List<Donor> donors = repo.findAll();
		Donor donor = new Donor();
		
		 for (Donor obj : donors) {
		        if(obj.getId().equals(id)) {
		           	System.out.println("found donor");
//		           	System.out.println(donor.getUsername());
		           	donor = obj;
		           	break;
		        } else {
		        	donor = null;
		        }
		 }
		
		return donor;
	}
	
}
