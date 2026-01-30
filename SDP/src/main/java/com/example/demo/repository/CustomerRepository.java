package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.demo.model.Customer;

public interface CustomerRepository extends JpaRepository<Customer, Integer>{
	
	@Query("select c from Customer c where name=?1 and password=?2")
	  public Customer checklogin(String username,String pword);
}
