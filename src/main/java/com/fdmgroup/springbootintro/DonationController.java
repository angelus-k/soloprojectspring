package com.fdmgroup.springbootintro;

import java.security.Principal;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.fdmgroup.springbootintro.model.Donation;
import com.fdmgroup.springbootintro.model.Donor;
import com.fdmgroup.springbootintro.repository.DonorRepository;
import com.fdmgroup.springbootintro.service.DonationService;
import com.fdmgroup.springbootintro.service.DonorService;

@Controller
public class DonationController {
	
	@Autowired
	DonorRepository repo;
	
	@Autowired
	private DonationService service;
	
	@Autowired
	private DonorService donorService;
	
	// get values from database
	@GetMapping("/donations")
	public String displayDonations(ModelMap model) {
		
		populateDonations(model);
		// return to display it on our website
		return "donations";
		
	}
	

	// sent values to database
	@PostMapping("/account") 
	// ensure that we get a donation as a parameter || mapps input of fields in jsp page to the respective attribute values in the object donation it creates
	public String addDonation(@ModelAttribute Donation donation, ModelMap model, Principal principal) {
	
		List<Donor> donors = repo.findAll();
		String username = principal.getName();
		System.out.println(username);
				
		for (Donor obj : donors) {
	        obj.getUsername().equals(username);
	        System.out.println(obj.getId());
	        donation.setDonor(obj);
	    }
		
		// write donation to database
		service.createNewDonation(donation);
		populateDonations(model);
				
		return "account";
	}

	
	@GetMapping("donations/{fk_donor_id}")
	public String goToAccountWhenDonating (@PathVariable Integer fk_donor_id, ModelMap model) {
		
		Integer donorId = 0;
		
		try {
			Donor donor = donorService.findDonorById(fk_donor_id);
//		String username = service.findDonorById(donor_id).getUsername();
			Integer id = fk_donor_id;
			String username = donor.getUsername();
			donorId = donor.getId();
			model.addAttribute("donors", username);
			model.addAttribute("donorId", id);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		// select only those donations from the list where the fk donor_id is equal to the given donor_id
		List<Donation> donations = donorService.findDonationByDonor(fk_donor_id);
				
		// convert to String
		String donationString = donations.toString();
		
		model.addAttribute("donations", donations);
		
		return "account" ;
	}
	
	@GetMapping("donations/{id}")
	public String deleteDonation(@PathVariable Integer id, ModelMap model) {
		
		service.deleteDonation(id);
		populateDonations(model);
		return "donations";
	}
	
	private void populateDonations(ModelMap model) {
		// get all donations from our service
		List<Donation> donations = service.findAllDonations();
		// add them to our model that we pass on to our jsp
		model.addAttribute("donations", donations);
	}
}
