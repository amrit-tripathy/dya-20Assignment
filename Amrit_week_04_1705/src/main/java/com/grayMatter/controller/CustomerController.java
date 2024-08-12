package com.grayMatter.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.grayMatter.model.Customer;
import com.grayMatter.service.CustService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class CustomerController {
	
	@Autowired
	private CustService service;
	@RequestMapping(value="signupverify", method=RequestMethod.POST)
	public ModelAndView doaddcustomer(@RequestParam String id,@RequestParam String name,@RequestParam String email,@RequestParam String password) {
		service.addCustomer(new Customer(Integer.parseInt(id),name,email,password));
		return new ModelAndView("loginpage");
	}
	@RequestMapping(value="loginverify", method=RequestMethod.POST)
	public ModelAndView dologincustomer(@RequestParam String name,@RequestParam String email,@RequestParam String password,HttpSession session) {
		ModelAndView mv =null;
		if(name.equals("admin")&&email.equals("admin@gmail.com")&&password.equals("99")) {
			mv = new ModelAndView("adminHome");
		}
		else {
			mv = new ModelAndView("custHome");
			Customer c = service.getCustomerByName(name,password);
			session.setAttribute("custid", c.getId());	
		}
		return mv;
	}
	@RequestMapping("getallCustomers")
	public ModelAndView showallcustomers() {
		List<Customer> custList = service.getAllCustomers();
		ModelAndView mv = new ModelAndView("getallCustomersPage");
		mv.addObject("custList",custList);
		return mv;
	}
	
	@RequestMapping(value="updateCustomer", method=RequestMethod.POST)
	public ModelAndView doUpdateCustomer(@RequestParam String name,@RequestParam String email,@RequestParam String password,HttpSession session) {
		int custid = (int)session.getAttribute("custid");
		service.updateCustomer(new Customer(custid,name,email,password));
		ModelAndView mv = new ModelAndView("custHome");
		return mv;
	}
	@RequestMapping(value = "getCustomerDetails")
	public ModelAndView getCustomerDetails(HttpSession session) {
		ModelAndView mv = new ModelAndView("getCustomerDetailsPage");
		int custid = (int)session.getAttribute("custid");
		Customer c=(Customer)service.getCustomerById(custid);
		
		mv.addObject("custid",c.getId());
		mv.addObject("name",c.getName());
		mv.addObject("email",c.getEmail());
		mv.addObject("password",c.getPassword());
	    return mv;
	}
	
}
