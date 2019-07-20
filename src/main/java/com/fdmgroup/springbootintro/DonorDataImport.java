package com.fdmgroup.springbootintro;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;

import com.fdmgroup.springbootintro.model.Donor;
import com.fdmgroup.springbootintro.repository.DonorRepository;


@Component
public class DonorDataImport implements ApplicationRunner {
	
	@Autowired
	DonorRepository repo;
	
	@Autowired
	PasswordEncoder encoder;
	
	@Override
	public void run(ApplicationArguments args) throws Exception {
		
		Donor donor = new Donor();
		donor.setEmail("abc");
		donor.setPassword(encoder.encode("123"));
		donor.setUsername("abc");
		
		repo.save(donor);
		
		
	}

}
