package com.example.demo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.Admin;
import com.example.demo.model.Customer;
import com.example.demo.model.Seller;
import com.example.demo.repository.AdminRepository;
import com.example.demo.repository.CustomerRepository;
import com.example.demo.repository.SellerRepository;


@Service
public class AdminServiceImpl implements AdminService
{
    @Autowired
 private AdminRepository adminRepository;
    
    @Autowired
    private SellerRepository sellerRepository;
    
    @Autowired
    private CustomerRepository customerRepository;
 
 @Override
 public List<Seller> viewallsellers() 
 {
  
  return sellerRepository.findAll();
 }
 
 @Override
 public String deleteseller(int sid) 
 {
  
  Optional<Seller> obj = sellerRepository.findById(sid);
     
     String msg = null;
     
     if(obj.isPresent())
     {
       Seller seller = obj.get();
       sellerRepository.delete(seller);
       msg = "Seller Deleted Successfully";
     }
     else
     {
       msg = "Seller Not Found";
     }
     
     return msg;
 }

 @Override
 public Seller viewsellerbyid(int sid) {
  Optional<Seller> obj = sellerRepository.findById(sid);    
     
     if(obj.isPresent())
     {
       Seller seller = obj.get();
       return seller;
     }
     else
     {
       return null;
     }
 }

 @Override
 public Admin checkadminlogin(String auname, String apwd) {
  
  return adminRepository.checkadminlogin(auname, apwd);
  
 }

@Override
public int updatestatus(boolean active, int eid) {
	// TODO Auto-generated method stub
	return adminRepository.updatestatus(active, eid);
}

@Override
public String addcustomer(Customer c) {
	// TODO Auto-generated method stub
	customerRepository.save(c);
	return "Customer Added Successfully";
}

@Override
public long sellercount() {
	// TODO Auto-generated method stub
	return sellerRepository.count();
}

@Override
public long customercount() {
	// TODO Auto-generated method stub
	return customerRepository.count();
}
  
}