package com.example.demo.service;

import com.example.demo.model.Seller;

public interface SellerService {
	
	public String addseller(Seller smp);
	public String updateseller(Seller smp);
	public Seller viewsellerbyid(int sid);
	
	public Seller checksellerlogin(String email, String pwd);
	

}
