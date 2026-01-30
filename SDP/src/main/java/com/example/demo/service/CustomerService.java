package com.example.demo.service;

import com.example.demo.model.Customer;

public interface CustomerService {

 public String addcustomer(Customer c);
 public Customer checklogin(String username,String pword);
 public Customer viewcustomerbyid(int cid);
 public String updatecustomer(Customer c);
 
}