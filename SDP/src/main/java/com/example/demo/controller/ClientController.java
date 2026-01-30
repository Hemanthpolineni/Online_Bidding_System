package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.service.AdminService;
import com.example.demo.service.CustomerService;
import com.example.demo.service.SellerService;
import com.example.demo.model.Admin;
import com.example.demo.model.Customer;
import com.example.demo.model.Seller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ClientController {
  
@Autowired
private AdminService adminService;

@Autowired
private SellerService sellerService;

@Autowired
private CustomerService customerService;

@GetMapping("/")
public String index()
{
  return "index";
}

@GetMapping("aboutus")
public String aboutus() {
	return "aboutus";
}

@GetMapping("contactus")
public String contactus() {
	return "contactus";
}

@GetMapping("customersign")
public String customersign() {
	return"customersign";
}

@GetMapping("forgotpassword")
public String forgotpassword() {
	return "forgotpassword";
}
@GetMapping("sign") //URI $ METHOD name can be different 
public ModelAndView adminlogin()
{
  ModelAndView mv=new ModelAndView();
  mv.setViewName("adminlogin");
  return mv;
}

@PostMapping("checkadminlogin")
public ModelAndView checkadminlogin(HttpServletRequest request)
{
  ModelAndView mv = new ModelAndView(); 
  
  
  String uname = request.getParameter("uname");
   String pwd = request.getParameter("pwd");
   
  Admin admin = adminService.checkadminlogin(uname, pwd);
  
  if(admin!=null)
  {
    mv.setViewName("adminhome");
    long scount = adminService.sellercount();
    long ccount = adminService.customercount();
    
    mv.addObject("scount", scount);
    mv.addObject("ccount", ccount);
  }
  else
  {
    mv.setViewName("adminlogin");
    mv.addObject("message", "Login Failed");
  }
  
  return mv;
}

@GetMapping("sellersign")
public ModelAndView sellerlogin()
{
  ModelAndView mv=new ModelAndView();
  mv.setViewName("sellerlogin");
  return mv;
}

@PostMapping("checksellerlogin")
public ModelAndView checkemplogin(HttpServletRequest request)
{
 ModelAndView mv = new ModelAndView();
 
    String email = request.getParameter("email");
    String pwd = request.getParameter("pwd");
    
    Seller seller =  sellerService.checksellerlogin(email, pwd);
   
   if(seller!=null)
   {
    // session
	   
	   HttpSession session = request.getSession();
	   
	   session.setAttribute("sid", seller.getId()); // eid is a session variable
	   session.setAttribute("sname", seller.getName()); // ename is a session variable
    
    
    // session
    
     mv.setViewName("sellerhome");
   }
   else
   {
     mv.setViewName("sellerlogin");
     mv.addObject("message","Login Failed");
   }
   
   return mv;
}

/*@GetMapping("emp")
public String emp()
{
  return "empreg";
}*/

@GetMapping("sellerreg")
public ModelAndView sellerregistration()
{
  ModelAndView mv=new ModelAndView();
  mv.setViewName("sellerreg");
  return mv;
}

   @PostMapping("insertseller")
   public ModelAndView insertaction(HttpServletRequest request)
   {
     String msg=null;
     ModelAndView mv=new ModelAndView();
     try {
       String name = request.getParameter("name");
         String gender = request.getParameter("gender");
         String dob = request.getParameter("dob");
         String dept = request.getParameter("dept");
         String rat= request.getParameter("rating");
         double rating = Double.parseDouble(rat);
         String email = request.getParameter("email");
         String pwd = request.getParameter("pwd");
         String location = request.getParameter("location");
         String contact = request.getParameter("contact");
      
         Seller seller=new Seller();
        seller.setName(name);
        seller.setGender(gender);
        seller.setDateofbirth(dob);
        seller.setDepartment(dept);
        seller.setRating(rating);
        seller.setEmail(email);
        seller.setPassword(pwd);
        seller.setLocation(location);
        seller.setContact(contact);
        seller.setActive(true);
        msg=sellerService.addseller(seller);
        mv.setViewName("displaymsg");
       mv.addObject("message",msg);
        
     }
     catch(Exception e)
     {
       msg=e.getMessage();
       mv.setViewName("displayerror");
       mv.addObject("message",msg);
     }
     
    
     return mv;
   }
   
   @GetMapping("viewallsellers")
   public ModelAndView viewallsellers()
   {
    List<Seller> sellerlist = adminService.viewallsellers();
    
    ModelAndView mv = new ModelAndView("viewallsellerd");
    mv.addObject("sellerdata",sellerlist);
    
    return mv;
    
   }

   @GetMapping("view")
   public ModelAndView viewsellerdemo(@RequestParam("id") int sid)
   {
	   Seller seller = adminService.viewsellerbyid(sid);
     ModelAndView mv = new ModelAndView();
     mv.setViewName("viewsellerbyid");
     mv.addObject("seller", seller);
     return mv;
   }
   
   @GetMapping("delete/{id}")
   public String deleteaction(@PathVariable("id") int sid)
   {
     adminService.deleteseller(sid);
     return "redirect:/deleteseller";
   }
   @GetMapping("deleteseller")
   public ModelAndView deletesellerdemo()
   {
     ModelAndView mv = new ModelAndView();
     mv.setViewName("deleteemp"); //deleteemp is jsp file name
     List<Seller> sellerlist =  adminService.viewallsellers();
     mv.addObject("sellerdata", sellerlist);
     return mv;
   }
   
   @GetMapping("adminhome")
   public ModelAndView adminhome()
   {
	   long scount = adminService.sellercount();
	   long ccount = adminService.customercount();
     ModelAndView mv = new ModelAndView();
     mv.setViewName("adminhome");
     mv.addObject("scount", scount);
     mv.addObject("ccount", ccount);
     return mv;
     
   }
   
   @GetMapping("sellerhome")
   public ModelAndView emphome(HttpServletRequest request)
   {
	   HttpSession session = request.getSession();
	   
	   int sid = (int)session.getAttribute("sid"); // eid is session variable
	   String sname = (String)session.getAttribute("sname");
	   
     ModelAndView mv = new ModelAndView();
     mv.setViewName("emphome");
     mv.addObject("sid", sid);
     mv.addObject("sname", sname);
     return mv;
   }
   @GetMapping("updateprofile")
   public ModelAndView updateemp(HttpServletRequest request)
   {
     ModelAndView mv = new ModelAndView();
     
     HttpSession session = request.getSession();
     
     mv.setViewName("updateprofile");
     
     mv.addObject("sid", session.getAttribute("sid"));
     mv.addObject("sname", session.getAttribute("sname"));
     
     int id = (int) session.getAttribute("sid");
     
     Seller seller = sellerService.viewsellerbyid(id);
     
     mv.addObject("seller", seller);
     
     return mv;
   }
   
   @PostMapping("update")
   public ModelAndView updateaction(HttpServletRequest request)
   {
     String msg = null;
     
     ModelAndView mv = new ModelAndView();
     
       HttpSession session = request.getSession();
     
     mv.addObject("eid", session.getAttribute("sid"));
     mv.addObject("ename", session.getAttribute("sname"));
     
     int id = (int) session.getAttribute("sid");
     
    try
    {
      String name = request.getParameter("name");
      String dob = request.getParameter("dob");
      String dept = request.getParameter("dept");
      String rat = request.getParameter("salary");
      double rating = Double.parseDouble(rat);
      String email = request.getParameter("email");
      String pwd = request.getParameter("pwd");
      String location = request.getParameter("location");
      String contact = request.getParameter("contact");
      
      Seller seller = new Seller();
      seller.setId(id);
       seller.setName(name);
       seller.setDateofbirth(dob);
       seller.setDepartment(dept);
       seller.setRating(rating);
       seller.setEmail(email);
       seller.setPassword(pwd);
       seller.setLocation(location);
       seller.setContact(contact);
       
       
       msg = sellerService.updateseller(seller);
       
       mv.setViewName("sellerlogin");
       mv.addObject("message",msg);
      
    }
    catch(Exception e)
    {
      msg = e.getMessage();
      
      mv.setViewName("updateerror");
       mv.addObject("message",msg);
    }
     return mv;

   }
   
   @GetMapping("addcustomer")
   public String addcustomer(Model m) {
	   m.addAttribute("customer", new Customer());
	   return "addcustomer";
	   
   }
   
   @PostMapping("insertcustomer")
   public ModelAndView insertcustomer(@ModelAttribute("customer") Customer c) {
	   String msg = adminService.addcustomer(c);
	   ModelAndView mv = new ModelAndView();
	   mv.setViewName("customermsg");
	   mv.addObject("message", msg);
	   
	   return mv;
   }
   
   @GetMapping("updatestatus")
   public ModelAndView updatestatus(){
     ModelAndView mv = new ModelAndView();
     mv.setViewName("updatestatus");
     List<Seller> sellerlist =  adminService.viewallsellers();
     mv.addObject("sellerdata", sellerlist);
     return mv;
   }
   
   @GetMapping("setstatus")
   public ModelAndView setstatusaction(@RequestParam("id") int sid,@RequestParam("status") boolean status)
   {
     int n = adminService.updatestatus(status, sid);
     ModelAndView mv = new ModelAndView();
     mv.setViewName("updatestatus");
     List<Seller> sellerlist =  adminService.viewallsellers();
     mv.addObject("sellerdata", sellerlist);
       
    
     if(n>0)
     {
       mv.addObject("message", "Status Updated Successfully");
     }
     else
     {
       mv.addObject("message", "Failed to Update Status");
     }
     
     return mv;
   }
   
   @GetMapping("sellerlogout")
   public ModelAndView sellerlogout() {
	   ModelAndView mv = new ModelAndView();
	   	mv.setViewName("sellerlogin");
	   	mv.addObject("message", "Logout Successfully");
	   	return mv;
   }
   
}