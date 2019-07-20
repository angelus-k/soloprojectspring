package com.fdmgroup.springbootintro.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.fdmgroup.springbootintro.model.Donor;

@Repository
public interface DonorRepository extends JpaRepository<Donor, Integer>{

	Donor findDonorByEmail(String username);

	Donor findDonorByUsername(String username);
}
