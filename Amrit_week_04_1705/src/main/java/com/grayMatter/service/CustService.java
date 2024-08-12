package com.grayMatter.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.grayMatter.dao.CustomerDao;
import com.grayMatter.dao.CustomerMapper;
import com.grayMatter.model.Customer;

@Service
public class CustService {
	@Autowired
	private CustomerDao custdao;
	public List<Customer> getAllCustomers(){
		return custdao.getAllCustomers();
	}
	public int addCustomer(Customer c) {
		return custdao.addCustomer(c);
	}
	public int deleteCustomer(int id) {
		return custdao.deleteCustomer(id);
	}
	public int updateCustomer(Customer c) {
		return custdao.updateCustomer(c);
	}
	public Customer getCustomerById(int id) {
		return custdao.getCustomerById(id);
	}
	public Customer getCustomerByName(String name,String password) {
		return custdao.getCustomerByName(name,password);
	}

}
