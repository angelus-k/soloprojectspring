package com.fdmgroup.springbootintro;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fdmgroup.springbootintro.model.Donation;
import com.fdmgroup.springbootintro.model.Donor;
import com.fdmgroup.springbootintro.repository.DonorRepository;
import com.fdmgroup.springbootintro.service.DonationService;
import com.fdmgroup.springbootintro.service.DonorService;
import com.fdmgroup.springbootintro.service.DonorServiceImpl;

@Controller


public class DonorController {
	
	Integer donorId = 0;
	
	@Autowired
	private DonorService service;
	
	@Autowired 
	private DonationService donService;
	
	@Autowired
	DonorRepository repo;
	
	// get values from database
	@GetMapping("/donors")
	public String displayDonors(ModelMap model) {
		
		populateDonors(model);
		// return to display it on our website
		return "donors";
	}
	

	// sent values to database
	@PostMapping("/regsuccess") 
	// ensure that we get a donor as a parameter || mapps input of fields in jsp page to the respective attribute values in the object donor it creates
	//@ModelAttribute
	public String addDonor(@Valid Donor donor, BindingResult bindingResult, ModelMap model) {
		
		if (bindingResult.hasErrors() || !service.validateInput(donor, null)) {
			model.addAttribute("bindingResult", bindingResult);
			return "register";
		} 

		else {
			// write donor to database
			service.createNewDonor(donor); 
			populateDonors(model);
			return "regsuccess"; // donors
		}
	}
	
	@GetMapping("donors/{id}")
	public String deleteDonor(@PathVariable int id, ModelMap model) {
		
		// delete the donor where the user clicks on
		service.deleteDonor(id);
		populateDonors(model);
		return "donors";
	}
	

	
	@GetMapping("account/{fk_donor_id}")
	public String getDonationById(@PathVariable Integer fk_donor_id, ModelMap model) {
		
		try {
			Donor donor = service.findDonorById(fk_donor_id);
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
		List<Donation> donations = service.findDonationByDonor(fk_donor_id);
				
		// convert to String
		String donationString = donations.toString();
		
		model.addAttribute("donations", donations);
		
		return "account" ;
	}
	
	
	@GetMapping("/welcome")
	public String goToWelcome() {
		return "welcome";
	}
	
	@GetMapping("/register")
	public String goToRegister() {
		return "register";
	}
	
	@GetMapping("/")
	public String goToIndex(@ModelAttribute Donor donor, ModelMap model) {
		
		Integer donorId;
		
		List<Donor> donors = repo.findAll();
		String username = donor.getUsername();
		System.out.println(username);
				
		for (Donor obj : donors) {
	        obj.getUsername().equals(username);
	        System.out.println(obj.getId());
	        donorId = obj.getId();
	        donor.setId(donorId);
	        System.out.println("Donor id is " + donorId);
			
			model.addAttribute("donor", donor);
	    }
		
		
		return "/index";
	}
	
	@GetMapping("/donate")
	public String goToDonate() {
		return "donate";
	}
	
	@GetMapping("/account")
	public String goToAccount() {
		return "account";
	}
	

	
	private void populateDonors(ModelMap model) {
		// get all donors from our service
		List<Donor> donors = service.findAllDonors();
		// add them to our model that we pass on to our jsp
		model.addAttribute("donors", donors);
	}
}
