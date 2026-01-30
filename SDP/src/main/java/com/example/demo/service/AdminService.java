package com.example.demo.service;

import java.util.List;

import com.example.demo.model.Admin;
import com.example.demo.model.Customer;
import com.example.demo.model.Seller;

public interface AdminService {
	public List<Seller> viewallsellers();
	public String deleteseller(int sid);
	public Seller viewsellerbyid(int sid);
	public Admin checkadminlogin(String auname, String apwd);
	
	public int updatestatus(boolean active, int eid);
	public String addcustomer(Customer c);
	
	public long  sellercount(); //count(*)
	public long customercount(); // count
	
	
}
