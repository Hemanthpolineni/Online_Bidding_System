package com.example.demo.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.Seller;
import com.example.demo.repository.SellerRepository;

@Service
public class SellerServiceImpl implements SellerService{
	
	@Autowired
	private SellerRepository sellerRepository;
	@Override
	public String addseller(Seller seller) {
		// TODO Auto-generated method stub
		sellerRepository.save(seller);
		return "Employee Added Successfully";
	}

	@Override
	public String updateseller(Seller seller) {
		// TODO Auto-generated method stub
		Seller sell = sellerRepository.findById(seller.getId()).get();    
	    
		sell.setName(seller.getName());
		sell.setDateofbirth(seller.getDateofbirth());
		sell.setDepartment(seller.getDepartment());
		sell.setRating(seller.getRating());
		sell.setEmail(seller.getEmail());
		sell.setPassword(seller.getPassword());
		sell.setLocation(seller.getLocation());
		sell.setContact(seller.getContact());
	    
	    sellerRepository.save(sell);
	    
	    return "Seller Updated Successfully";
	}

	@Override
	public Seller viewsellerbyid(int sid) {
		// TODO Auto-generated method stub
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
	public Seller checksellerlogin(String email, String pwd) {
		// TODO Auto-generated method stub
		return sellerRepository.checksellerlogin(email, pwd);
	}

}
