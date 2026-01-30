package com.example.demo.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.Customer;
import com.example.demo.repository.CustomerRepository;

@Service
public class CustomerServiceImpl implements CustomerService {
  @Autowired
  private CustomerRepository customerRepository;
  @Override
  public String addcustomer(Customer c) {
    customerRepository.save(c);
    return "Customer added successfully";
  }
  @Override
  public Customer checklogin(String username, String pword) {
    return customerRepository.checklogin(username, pword);
  }
  
  @Override
  public Customer viewcustomerbyid(int eid) {
    
    Optional<Customer>obj=customerRepository.findById(eid);
    
    if(!obj.isEmpty())
    {
      Customer cus=obj.get();
      return cus;
    }
    else 
    {
      return null;
    }
  }
@Override
public String updatecustomer(Customer c) {
 Customer cus = customerRepository.findById(c.getId()).get();    
    
    cus.setName(c.getName());
    cus.setGender(c.getGender());
    cus.setDateofbirth(c.getDateofbirth());
    cus.setEmail(c.getEmail());
    cus.setPassword(c.getPassword());
    cus.setAddress(c.getAddress());
    cus.setContactno(c.getContactno());
  
  customerRepository.save(cus);
  
  return "Customer Updated Successfully";
}

 
}