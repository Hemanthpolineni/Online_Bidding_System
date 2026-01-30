package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.demo.model.Seller;

@Repository
public interface SellerRepository extends JpaRepository<Seller, Integer> {
	
	@Query("select s from Seller s where email=?1 and password=?2")

	public Seller checksellerlogin(String email, String pwd);
	
	
	
	
}
