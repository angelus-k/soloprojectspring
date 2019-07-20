package com.fdmgroup.springbootintro.security2;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

import com.fdmgroup.springbootintro.model.Donor;
import com.fdmgroup.springbootintro.repository.DonorRepository;



@Component
public class MyDonorDetailsService implements UserDetailsService {

	@Autowired
	private DonorRepository repo;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		Donor donor = repo.findDonorByUsername(username);
//		Donor donor = repo.findDonorByEmail(username);
		return new MyDonorPrincipal(donor);
		
	}

}
