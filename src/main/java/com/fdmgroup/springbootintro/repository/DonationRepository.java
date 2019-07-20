package com.fdmgroup.springbootintro.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.fdmgroup.springbootintro.model.Donation;

@Repository
public interface DonationRepository extends JpaRepository<Donation, Integer>{
}
