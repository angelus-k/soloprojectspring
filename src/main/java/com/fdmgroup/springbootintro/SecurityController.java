package com.fdmgroup.springbootintro;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import com.fdmgroup.springbootintro.model.Donor;
import com.fdmgroup.springbootintro.repository.DonorRepository;
import com.fdmgroup.springbootintro.service.DonorService;

@Controller
public class SecurityController {
	
	Integer donorId = 0;
	
	@Autowired
	private DonorService service;
	
	@Autowired
	DonorRepository repo;
	
	Principal principal;
	
	@GetMapping("/login")
	public String gotToLogin(@ModelAttribute Donor donor, ModelMap model) {
		
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
		
		return "index";
	}
}
